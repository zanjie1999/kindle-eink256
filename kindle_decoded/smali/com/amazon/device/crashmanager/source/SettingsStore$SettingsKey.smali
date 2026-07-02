.class public final enum Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;
.super Ljava/lang/Enum;
.source "SettingsStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/crashmanager/source/SettingsStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingsKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

.field public static final enum DEDUPE_TIMESTAMPS_JSON:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

.field public static final enum DROPBOX_TIME_INDEX_KEY:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

.field public static final enum MAP_BUILD_INDEX_KEY:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

.field public static final enum RAMDUMP_TIME_INDEX_KEY:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

.field public static final enum UPLOAD_TIMESTAMPS_JSON:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

.field public static final enum VERSION_NUMBER:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 12
    new-instance v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    const/4 v1, 0x0

    const-string v2, "DROPBOX_TIME_INDEX_KEY"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->DROPBOX_TIME_INDEX_KEY:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    .line 13
    new-instance v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    const/4 v2, 0x1

    const-string v3, "MAP_BUILD_INDEX_KEY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->MAP_BUILD_INDEX_KEY:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    .line 14
    new-instance v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    const/4 v3, 0x2

    const-string v4, "RAMDUMP_TIME_INDEX_KEY"

    invoke-direct {v0, v4, v3}, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->RAMDUMP_TIME_INDEX_KEY:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    .line 15
    new-instance v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    const/4 v4, 0x3

    const-string v5, "VERSION_NUMBER"

    invoke-direct {v0, v5, v4}, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->VERSION_NUMBER:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    .line 16
    new-instance v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    const/4 v5, 0x4

    const-string v6, "DEDUPE_TIMESTAMPS_JSON"

    invoke-direct {v0, v6, v5}, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->DEDUPE_TIMESTAMPS_JSON:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    .line 17
    new-instance v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    const/4 v6, 0x5

    const-string v7, "UPLOAD_TIMESTAMPS_JSON"

    invoke-direct {v0, v7, v6}, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->UPLOAD_TIMESTAMPS_JSON:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    .line 11
    sget-object v8, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->DROPBOX_TIME_INDEX_KEY:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->MAP_BUILD_INDEX_KEY:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->RAMDUMP_TIME_INDEX_KEY:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->VERSION_NUMBER:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->DEDUPE_TIMESTAMPS_JSON:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->$VALUES:[Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->$VALUES:[Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    invoke-virtual {v0}, [Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    return-object v0
.end method
