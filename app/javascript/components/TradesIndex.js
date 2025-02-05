import React, {useState, useEffect} from 'react'
import { BsSearch } from "react-icons/bs";
function TradesIndex({coins}) {
    const [items, setItems] = useState([...coins]);
    const [searchInput, setSearchInput] = useState("");

    const getColorChange = (price) => {
        return price > 0 
            ? "green" 
            : price < 0
            ? "red"
            : "plain";
    }
    const coinItems = items.map((coin) => {
        const change = getColorChange(coin.usd_24_h);
        
        return (
            <>
            <a href={coin.base} className="coin-link">
                <div className = "coin-item">
                    <p className="coin-item-name"> {coin.base}/{coin.target} </p>
                    <p className={`coin-item-price ${change}`}> {coin.last_price} </p>
                    <p className={`coin-item-change ${change}`}> {Math.trunc(coin.usd_24_h*100)/100}% </p>
                </div>
            </a>
            </>
        )
    })

    useEffect(() => {
        let input = searchInput.toLowerCase();
        const result = coins
            .filter(function(coin){
                // separate these so you can add to it later on i guess?
                let cgId = coin.coingecko_id.toLowerCase().indexOf(input) !== -1;
                let base = coin.base.toLowerCase().indexOf(input) !== -1;
                return cgId || base;
            });
        setItems(result);
    }, [searchInput]);

    return (
        <>
            <div className="trades-index-searchbar">
                <BsSearch />
                <input className="trades-index-input" placeholder="Search" type="text" value={searchInput} onChange={e => setSearchInput(e.target.value)} />
            </div>
            <div className = "coin-item-header">
                <p className="coin-item-name"> Pair </p>
                <p className="coin-item-price"> Price </p>
                <p className="coin-item-change">
                 Change </p>
            </div>
            <div className = "trades-index-items">
                {coinItems}
            </div>
        </>
    )
}

export default TradesIndex
