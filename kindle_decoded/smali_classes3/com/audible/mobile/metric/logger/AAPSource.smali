.class public final enum Lcom/audible/mobile/metric/logger/AAPSource;
.super Ljava/lang/Enum;
.source "AAPSource.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/Metric$Source;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/metric/logger/AAPSource;",
        ">;",
        "Lcom/audible/mobile/metric/domain/Metric$Source;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/metric/logger/AAPSource;

.field public static final enum ACLS_DOWNLOAD:Lcom/audible/mobile/metric/logger/AAPSource;

.field public static final enum ACLS_STREAMING:Lcom/audible/mobile/metric/logger/AAPSource;

.field public static final enum AColS:Lcom/audible/mobile/metric/logger/AAPSource;

.field public static final enum AGLS:Lcom/audible/mobile/metric/logger/AAPSource;

.field public static final enum LegacyAudibleSdk:Lcom/audible/mobile/metric/logger/AAPSource;

.field public static final enum Lph:Lcom/audible/mobile/metric/logger/AAPSource;

.field public static final enum Manager:Lcom/audible/mobile/metric/logger/AAPSource;

.field public static final enum Player:Lcom/audible/mobile/metric/logger/AAPSource;

.field public static final enum Search:Lcom/audible/mobile/metric/logger/AAPSource;

.field public static final enum Service:Lcom/audible/mobile/metric/logger/AAPSource;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 7
    new-instance v0, Lcom/audible/mobile/metric/logger/AAPSource;

    const/4 v1, 0x0

    const-string v2, "Manager"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/metric/logger/AAPSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPSource;->Manager:Lcom/audible/mobile/metric/logger/AAPSource;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPSource;

    const/4 v2, 0x1

    const-string v3, "Service"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/metric/logger/AAPSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPSource;->Service:Lcom/audible/mobile/metric/logger/AAPSource;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPSource;

    const/4 v3, 0x2

    const-string v4, "Player"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/metric/logger/AAPSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPSource;->Player:Lcom/audible/mobile/metric/logger/AAPSource;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPSource;

    const/4 v4, 0x3

    const-string v5, "Lph"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/metric/logger/AAPSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPSource;->Lph:Lcom/audible/mobile/metric/logger/AAPSource;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPSource;

    const/4 v5, 0x4

    const-string v6, "LegacyAudibleSdk"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/metric/logger/AAPSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPSource;->LegacyAudibleSdk:Lcom/audible/mobile/metric/logger/AAPSource;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPSource;

    const/4 v6, 0x5

    const-string v7, "ACLS_DOWNLOAD"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/metric/logger/AAPSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPSource;->ACLS_DOWNLOAD:Lcom/audible/mobile/metric/logger/AAPSource;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPSource;

    const/4 v7, 0x6

    const-string v8, "ACLS_STREAMING"

    invoke-direct {v0, v8, v7}, Lcom/audible/mobile/metric/logger/AAPSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPSource;->ACLS_STREAMING:Lcom/audible/mobile/metric/logger/AAPSource;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPSource;

    const/4 v8, 0x7

    const-string v9, "AGLS"

    invoke-direct {v0, v9, v8}, Lcom/audible/mobile/metric/logger/AAPSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPSource;->AGLS:Lcom/audible/mobile/metric/logger/AAPSource;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPSource;

    const/16 v9, 0x8

    const-string v10, "AColS"

    invoke-direct {v0, v10, v9}, Lcom/audible/mobile/metric/logger/AAPSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPSource;->AColS:Lcom/audible/mobile/metric/logger/AAPSource;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPSource;

    const/16 v10, 0x9

    const-string v11, "Search"

    invoke-direct {v0, v11, v10}, Lcom/audible/mobile/metric/logger/AAPSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPSource;->Search:Lcom/audible/mobile/metric/logger/AAPSource;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/audible/mobile/metric/logger/AAPSource;

    .line 5
    sget-object v12, Lcom/audible/mobile/metric/logger/AAPSource;->Manager:Lcom/audible/mobile/metric/logger/AAPSource;

    aput-object v12, v11, v1

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPSource;->Service:Lcom/audible/mobile/metric/logger/AAPSource;

    aput-object v1, v11, v2

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPSource;->Player:Lcom/audible/mobile/metric/logger/AAPSource;

    aput-object v1, v11, v3

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPSource;->Lph:Lcom/audible/mobile/metric/logger/AAPSource;

    aput-object v1, v11, v4

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPSource;->LegacyAudibleSdk:Lcom/audible/mobile/metric/logger/AAPSource;

    aput-object v1, v11, v5

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPSource;->ACLS_DOWNLOAD:Lcom/audible/mobile/metric/logger/AAPSource;

    aput-object v1, v11, v6

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPSource;->ACLS_STREAMING:Lcom/audible/mobile/metric/logger/AAPSource;

    aput-object v1, v11, v7

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPSource;->AGLS:Lcom/audible/mobile/metric/logger/AAPSource;

    aput-object v1, v11, v8

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPSource;->AColS:Lcom/audible/mobile/metric/logger/AAPSource;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/audible/mobile/metric/logger/AAPSource;->$VALUES:[Lcom/audible/mobile/metric/logger/AAPSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/metric/logger/AAPSource;
    .locals 1

    .line 5
    const-class v0, Lcom/audible/mobile/metric/logger/AAPSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/metric/logger/AAPSource;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/metric/logger/AAPSource;
    .locals 1

    .line 5
    sget-object v0, Lcom/audible/mobile/metric/logger/AAPSource;->$VALUES:[Lcom/audible/mobile/metric/logger/AAPSource;

    invoke-virtual {v0}, [Lcom/audible/mobile/metric/logger/AAPSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/metric/logger/AAPSource;

    return-object v0
.end method
