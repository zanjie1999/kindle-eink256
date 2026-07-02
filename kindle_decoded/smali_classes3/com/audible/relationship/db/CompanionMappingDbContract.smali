.class public final Lcom/audible/relationship/db/CompanionMappingDbContract;
.super Ljava/lang/Object;
.source "CompanionMappingDbContract.java"


# static fields
.field public static final ALL_TABLE_NAMES_ARR:[Ljava/lang/String;

.field public static final CREATE_TABLE_SQL_ARR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "CREATE TABLE IF NOT EXISTS relationships ( e_asin TEXT PRIMARY KEY, a_asin TEXT, a_amzn_asin TEXT, a_format TEXT, is_matched INTEGER, session_id INTEGER  ); "

    const-string v1, "CREATE TABLE IF NOT EXISTS sync_mapping ( e_guid TEXT, a_acr TEXT, e_asin TEXT, a_asin TEXT, sync_file_acr TEXT, PRIMARY KEY (e_guid, a_acr)  ); "

    const-string v2, "CREATE TABLE IF NOT EXISTS key_value ( key TEXT PRIMARY KEY NOT NULL, value TEXT NOT NULL ); "

    const-string v3, "CREATE TABLE IF NOT EXISTS relationship_request_queue ( type TEXT NOT NULL, payload TEXT NOT NULL, PRIMARY KEY (type, payload) ); "

    .line 30
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/db/CompanionMappingDbContract;->CREATE_TABLE_SQL_ARR:[Ljava/lang/String;

    const-string v0, "relationships"

    const-string v1, "sync_mapping"

    const-string v2, "key_value"

    const-string v3, "relationship_request_queue"

    .line 37
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/db/CompanionMappingDbContract;->ALL_TABLE_NAMES_ARR:[Ljava/lang/String;

    return-void
.end method
