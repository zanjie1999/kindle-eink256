.class public final Lcom/audible/hushpuppy/service/db/HushpuppyDBSql;
.super Ljava/lang/Object;
.source "HushpuppyDBSql.java"


# static fields
.field static final CREATE_STATEMENTS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "CREATE TABLE IF NOT EXISTS relationships ( relationship_id TEXT, e_asin TEXT, e_acr TEXT, e_version TEXT, e_format TEXT, e_asset_type TEXT, e_sku TEXT, a_asin TEXT, a_amzn_asin TEXT, a_acr TEXT, a_version TEXT, a_format TEXT, a_asset_type TEXT, a_sku TEXT, sync_file_acr TEXT, type TEXT, is_matched INTEGER, time_last_fetched INTEGER ); "

    const-string v1, "CREATE TABLE IF NOT EXISTS preferred_marketplaces ( id INTEGER PRIMARY KEY NOT NULL, pfm TEXT NOT NULL, pfm_readable TEXT NOT NULL, last_update_millis INTEGER NOT NULL ); "

    const-string v2, "CREATE TABLE IF NOT EXISTS preferred_marketplace_endpoints ( id INTEGER PRIMARY KEY NOT NULL, preferred_marketplace_id INTEGER NOT NULL, type TEXT NOT NULL, url TEXT NOT NULL,  FOREIGN KEY ( preferred_marketplace_id )  REFERENCES preferred_marketplaces ( id )  ON DELETE CASCADE ); "

    const-string v3, "CREATE TABLE IF NOT EXISTS name_values ( id INTEGER PRIMARY KEY NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL, last_update_millis INTEGER NOT NULL)"

    const-string v4, "CREATE UNIQUE INDEX IF NOT EXISTS preferred_marketplaces_pfm_index ON preferred_marketplaces ( pfm ASC ); "

    const-string v5, "CREATE UNIQUE INDEX IF NOT EXISTS preferred_marketplaces_pfm_readable_index ON preferred_marketplaces ( pfm_readable ASC ); "

    const-string v6, "CREATE INDEX IF NOT EXISTS preferred_marketplaces_last_update_millis_index ON preferred_marketplaces ( last_update_millis ASC ); "

    const-string v7, "CREATE UNIQUE INDEX IF NOT EXISTS preferred_marketplace_endpoints_type_index ON preferred_marketplace_endpoints ( preferred_marketplace_id ASC, type ASC ); "

    const-string v8, "CREATE UNIQUE INDEX IF NOT EXISTS name_values_name_index ON name_values ( name ASC ); "

    .line 192
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/db/HushpuppyDBSql;->CREATE_STATEMENTS:[Ljava/lang/String;

    return-void
.end method
