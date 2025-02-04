//
//  OpenDotaModels.swift
//  WhyYouSuckAtDota
//
//  Created by Caleb Voorhees on 10/11/24.
//

import Foundation

// Constants
var OPEN_DOTA_URL = "https://api.opendota.com"
var DOTA_CDN_URL = "https://cdn.dota2.com/apps/dota2/images"
var API_KEY = Bundle.main.object(forInfoDictionaryKey: "API_KEY")

// Error Enums
// ***************************************************************************************************************************

// Open Dota API call errors
enum ApiError: Error {
    case invalidURL
    case invalidReponse
    case invalidData
    case noData
}

enum SearchViewState: Int {
    case idle = 0
    case idSearchSuccessful = 1
    case idSearchError = 2
    case nameSearchSuccessful = 3
    case nameSearchError = 4
}

// Open Dota API data objects
// ***************************************************************************************************************************
struct Account: Codable
{
    let profile: Profile
    let rank_tier: Int?
}

struct Profile: Codable
{
    let account_id: Int
    let personaname: String?
    let avatarfull: String?
}

struct Player: Codable
{
    let account_id: Int?
    let hero_id: Int
    let item_0: Int?
    let item_1: Int?
    let item_2: Int?
    let item_3: Int?
    let item_4: Int?
    let item_5: Int?
    let backpack_0: Int?
    let backpack_1: Int?
    let backpack_2: Int?
    let kills: Int?
    let deaths: Int?
    let assists: Int?
    let last_hits: Int?
    let denies: Int?
    let gold_per_min: Int?
    let xp_per_min: Int?
    let level: Int?
    let net_worth: Int?
    let aghanims_scepter: Int?
    let aghanims_shard: Int?
    let hero_damage: Int?
    let tower_damage: Int?
    let hero_healing: Int?
    let ability_upgrades_arr: [Int]?
    let start_time: Int?
    let duration: Int?
    let win: Int?
    let lose: Int?
    let total_gold: Int?
    let total_xp: Int?
//    let kills_per_min: Float?
//    let kda: Double?
}

struct HeroRankings: Codable
{
    let hero_id: Int
    let rankings: [RankedPlayer]
}

struct RankedPlayer: Codable
{
    let account_id: Int
    let rank_tier: Int?
}

struct SearchResult: Codable
{
    let account_id: Int
    let personaname: String
    let avatarfull: String
}

struct Match: Codable
{
    let players: [Player]
}

struct RecentMatch: Codable
{
    let match_id: Int
}

struct ProMatch: Codable
{
    let match_id: Int
}

struct Hero: Codable
{
    let id: Int?
    let name: String
    let localized_name: String
    let primary_attr: String?
    let attack_types: String?
    let roles: [String]?
    let legs: Int?
}

struct Item: Codable
{
//    let abilities: [Ability] (could add later)
//    let hint: [String]
    let name: String
    let id: Int
    let img: String
    let dname: String?
    let qual: String?
    let cost: Int?
//    let behavior: String
//    let dmgType: String?
//    let notes: String?
//    let attrib: [Attribute] (could add later)
//    let mc: Bool?
//    let hc: Bool?
//    let cd: Int?
//    let lore: String?
//    let components: [String]?
//    let created: Bool?
//    let charges: Bool?
}
