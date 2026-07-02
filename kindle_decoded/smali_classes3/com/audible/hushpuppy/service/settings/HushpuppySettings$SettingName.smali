.class public final enum Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;
.super Ljava/lang/Enum;
.source "HushpuppySettings.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/service/settings/HushpuppySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;",
        ">;",
        "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

.field public static final enum LAST_FETCH_DEVICE_TIME_MS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

.field public static final enum LAST_FETCH_SERVER_TIME_MS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

.field public static final enum PFMS_CACHE_PERIOD_MILLIS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

.field public static final enum UPDATE_PFMS_STATUS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    new-instance v0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    const/4 v1, 0x0

    const-string v2, "LAST_FETCH_SERVER_TIME_MS"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->LAST_FETCH_SERVER_TIME_MS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    .line 30
    new-instance v0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    const/4 v2, 0x1

    const-string v3, "LAST_FETCH_DEVICE_TIME_MS"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->LAST_FETCH_DEVICE_TIME_MS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    .line 34
    new-instance v0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    const/4 v3, 0x2

    const-string v4, "UPDATE_PFMS_STATUS"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->UPDATE_PFMS_STATUS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    .line 38
    new-instance v0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    const/4 v4, 0x3

    const-string v5, "PFMS_CACHE_PERIOD_MILLIS"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->PFMS_CACHE_PERIOD_MILLIS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    .line 22
    sget-object v6, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->LAST_FETCH_SERVER_TIME_MS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->LAST_FETCH_DEVICE_TIME_MS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->UPDATE_PFMS_STATUS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->$VALUES:[Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;
    .locals 1

    .line 22
    const-class v0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;
    .locals 1

    .line 22
    sget-object v0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->$VALUES:[Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    return-object v0
.end method
