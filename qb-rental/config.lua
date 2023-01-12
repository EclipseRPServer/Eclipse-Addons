Config = {}
Config.locale = 'en'

Config.vehicleList = {
    { name = "BMX", model = "bmx", price = 25, needLicense = false},
    { name = "Faggio", model = "faggio", price = 250, needLicense = true },
    { name = "Blista", model = "blista", price = 500 , needLicense = true},
}

Config.locations = {
    {
        id = 1,
        spawnPed = vector4(1852.1, 2581.99, 45.67, 273.96),
        spawns = {
            vector4(1854.51, 2578.67, 45.67, 270.6),
            vector4(1854.32, 2574.82, 45.67, 269.87),
            vector4(1854.34, 2571.39, 45.67, 263.77),
            vector4(1854.37, 2567.58, 45.67, 266.55),
        }
    }
}
Config.translations = {
    en = {
        rent = 'Rent a vehicle',
        back = 'Return the vehicle (Recover 50% of the rental price)',
        success_back = 'You returned the vehicle, and you got back $',
        info_back = 'Remember to return this vehicle to recover 50% of the price of the vehicle.',
        error_no_license = 'You do not have the necessary license to be able to rent this vehicle',
        error_no_money = 'You do not have enough money.',
        error_no_papers = 'I can\'t take a vehicle without its papers.',
        error_not_a_rent = 'This is not a rented vehicle.',
        error_to_far = 'I don\'t see any rented vehicles, please make sure they are nearby',
        error_all_emplacement_used = 'All spawn locations are in use',
    },
    fr = {
        rent = 'Louer un véhicule',
        back = 'Rendre le véhicule (Récupérer 50% du prix de la location)',
        success_back = 'Vous avez rendu le véhicule, et vous avez récupéré $',
        info_back = 'Pensez à rendre ce véhicule pour récupérer 50% du prix du véhicule.',
        error_no_license = 'Vous n\'avez pas la license nécéssaire pour pouvoir louer ce véhicule',
        error_no_money = 'Vous n\'avez pas assez d\'argent.',
        error_no_papers = 'Je ne peux pas prendre un véhicule sans ses papiers.',
        error_not_a_rent = 'Ce n\'est pas un véhicule loué.',
        error_to_far = 'Je ne vois aucun véhicule loué, assurez-vous qu\'il se trouve à proximité',
        error_all_emplacement_used = 'Tous les emplacements de spawn sont en cours d\'utilisation',
    }

    -- add more languages
}


