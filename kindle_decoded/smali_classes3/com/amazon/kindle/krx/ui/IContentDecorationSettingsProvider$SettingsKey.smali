.class public final enum Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;
.super Ljava/lang/Enum;
.source "IContentDecorationSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingsKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

.field public static final enum WORDWISE_DECORATION_COLOR:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

.field public static final enum WORDWISE_DECORATION_COUNTRY:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

.field public static final enum WORDWISE_DECORATION_LANGUAGE:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

.field public static final enum WORDWISE_ENABLED:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 18
    new-instance v0, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    const/4 v1, 0x0

    const-string v2, "WORDWISE_ENABLED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_ENABLED:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    .line 19
    new-instance v0, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    const/4 v2, 0x1

    const-string v3, "WORDWISE_DECORATION_COLOR"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_DECORATION_COLOR:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    .line 20
    new-instance v0, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    const/4 v3, 0x2

    const-string v4, "WORDWISE_DECORATION_LANGUAGE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_DECORATION_LANGUAGE:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    .line 21
    new-instance v0, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    const/4 v4, 0x3

    const-string v5, "WORDWISE_DECORATION_COUNTRY"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_DECORATION_COUNTRY:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    .line 16
    sget-object v6, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_ENABLED:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_DECORATION_COLOR:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_DECORATION_LANGUAGE:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->$VALUES:[Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->$VALUES:[Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    return-object v0
.end method
