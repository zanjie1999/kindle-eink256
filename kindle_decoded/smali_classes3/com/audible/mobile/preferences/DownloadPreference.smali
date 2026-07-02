.class public final enum Lcom/audible/mobile/preferences/DownloadPreference;
.super Ljava/lang/Enum;
.source "DownloadPreference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/preferences/DownloadPreference;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/preferences/DownloadPreference;

.field public static final enum WIFI_ONLY:Lcom/audible/mobile/preferences/DownloadPreference;

.field public static final enum WIFI_OR_WAN:Lcom/audible/mobile/preferences/DownloadPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/audible/mobile/preferences/DownloadPreference;

    const/4 v1, 0x0

    const-string v2, "WIFI_ONLY"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/preferences/DownloadPreference;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/preferences/DownloadPreference;->WIFI_ONLY:Lcom/audible/mobile/preferences/DownloadPreference;

    new-instance v0, Lcom/audible/mobile/preferences/DownloadPreference;

    const/4 v2, 0x1

    const-string v3, "WIFI_OR_WAN"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/preferences/DownloadPreference;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/preferences/DownloadPreference;->WIFI_OR_WAN:Lcom/audible/mobile/preferences/DownloadPreference;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/mobile/preferences/DownloadPreference;

    .line 6
    sget-object v4, Lcom/audible/mobile/preferences/DownloadPreference;->WIFI_ONLY:Lcom/audible/mobile/preferences/DownloadPreference;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/mobile/preferences/DownloadPreference;->$VALUES:[Lcom/audible/mobile/preferences/DownloadPreference;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/preferences/DownloadPreference;
    .locals 1

    .line 6
    const-class v0, Lcom/audible/mobile/preferences/DownloadPreference;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/preferences/DownloadPreference;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/preferences/DownloadPreference;
    .locals 1

    .line 6
    sget-object v0, Lcom/audible/mobile/preferences/DownloadPreference;->$VALUES:[Lcom/audible/mobile/preferences/DownloadPreference;

    invoke-virtual {v0}, [Lcom/audible/mobile/preferences/DownloadPreference;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/preferences/DownloadPreference;

    return-object v0
.end method
