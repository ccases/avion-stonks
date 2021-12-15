# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admins = User.create(
    [
        {
          email: 'pr@avion.com',
          password: 'hesucrypto',
          admin: true
        },
        {
          email: 'cc@avion.com',
          password: 'kristocurrency',
          admin: true
        }
    ]
)

users = User.create(
    [
        {
            email: 'asd@asd.com',
            password: '123456'
        },
        {
            email: 'stonks@asd.com',
            password: '123456',
            kind: 'broker'
        }
    ]
)

coins = Coin.create(
    [
        {
            target: 'USDT',
            base: 'BTC'
        },
        {
            target: 'USDT',
            base: 'ETH'
        },
        {
            target: 'USDT',
            base: 'XRP'
        },
        {
            target: 'USDT',
            base: 'AXS'
        },
        {
            target: 'USDT',
            base: 'BNB'
        },
        {
            target: 'USDT',
            base: 'YGG'
        },
        {
            target: 'USDT',
            base: '1INCH'
        },
        {
            target: 'USDT',
            base: 'ADA'
        },
        {
            target: 'USDT',
            base: 'ALGO'
        },
        {
            target: 'USDT',
            base: 'BAT'
        },
        {
            target: 'USDT',
            base: 'BHC'
        },
        {
            target: 'USDT',
            base: 'BURGER'
        },
        {
            target: 'USDT',
            base: 'CAKE'
        },
        {
            target: 'USDT',
            base: 'COTI'
        },
        {
            target: 'USDT',
            base: 'CTSI'
        },
        {
            target: 'USDT',
            base: 'DENT'
        },
        {
            target: 'USDT',
            base: 'DOGE'
        },
        {
            target: 'USDT',
            base: 'DOT'
        },
        {
            target: 'USDT',
            base: 'EGLD'
        },
        {
            target: 'USDT',
            base: 'ENJ'
        },
        {
            target: 'USDT',
            base: 'FET'
        },
        {
            target: 'USDT',
            base: 'FIDA'
        },
        {
            target: 'USDT',
            base: 'FIL'
        },
        {
            target: 'USDT',
            base: 'GALA'
        },
        {
            target: 'USDT',
            base: 'GTO'
        },
        {
            target: 'USDT',
            base: 'IOTA'
        },
        {
            target: 'USDT',
            base: 'LTO'
        },
        {
            target: 'USDT',
            base: 'MANA'
        },
        {
            target: 'USDT',
            base: 'MATIC'
        },
        {
            target: 'USDT',
            base: 'OGN'
        },
        {
            target: 'USDT',
            base: 'ONE'
        },
        {
            target: 'USDT',
            base: 'POLY'
        },
        {
            target: 'USDT',
            base: 'PUNDIX'
        },
        {
            target: 'USDT',
            base: 'SHIB'
        },

    ]
)