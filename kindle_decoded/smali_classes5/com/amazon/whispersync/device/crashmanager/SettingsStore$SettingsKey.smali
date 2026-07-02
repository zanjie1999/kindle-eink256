.class public final enum Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;
.super Ljava/lang/Enum;
.source "SettingsStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/device/crashmanager/SettingsStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingsKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

.field public static final enum DROPBOX_TIME_INDEX_KEY:Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

.field public static final enum RAMDUMP_TIME_INDEX_KEY:Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

.field public static final enum VERSION_NUMBER:Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    const/4 v1, 0x0

    const-string v2, "DROPBOX_TIME_INDEX_KEY"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;->DROPBOX_TIME_INDEX_KEY:Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    new-instance v0, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    const/4 v2, 0x1

    const-string v3, "RAMDUMP_TIME_INDEX_KEY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;->RAMDUMP_TIME_INDEX_KEY:Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    new-instance v0, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    const/4 v3, 0x2

    const-string v4, "VERSION_NUMBER"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;->VERSION_NUMBER:Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    .line 9
    sget-object v5, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;->DROPBOX_TIME_INDEX_KEY:Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;->RAMDUMP_TIME_INDEX_KEY:Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;->$VALUES:[Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;->$VALUES:[Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    return-object v0
.end method
