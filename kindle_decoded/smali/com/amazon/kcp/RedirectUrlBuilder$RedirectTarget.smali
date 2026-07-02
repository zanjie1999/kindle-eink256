.class public final enum Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;
.super Ljava/lang/Enum;
.source "RedirectUrlBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/RedirectUrlBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RedirectTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

.field public static final enum COOKIES:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

.field public static final enum INTEREST_BASED_ADS:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

.field public static final enum LICENSE:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

.field public static final enum PRIVACY_POLICY:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

.field public static final enum TERMS_AND_CONDITIONS:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

.field public static final enum TROUBLESHOOTING:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

.field public static final enum WIKI:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;


# instance fields
.field private final parameterValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    new-instance v1, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    const/4 v2, 0x0

    const-string v3, "COOKIES"

    const-string v4, "Cookies"

    .line 127
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->COOKIES:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    const/4 v2, 0x1

    const-string v3, "INTEREST_BASED_ADS"

    const-string v4, "TargAds"

    .line 128
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->INTEREST_BASED_ADS:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    const/4 v2, 0x2

    const-string v3, "LICENSE"

    const-string v4, "License"

    .line 129
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->LICENSE:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    const/4 v2, 0x3

    const-string v3, "PRIVACY_POLICY"

    const-string v4, "Privacy"

    .line 130
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->PRIVACY_POLICY:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    const/4 v2, 0x4

    const-string v3, "TERMS_AND_CONDITIONS"

    const-string v4, "TermsCond"

    .line 131
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->TERMS_AND_CONDITIONS:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    const/4 v2, 0x5

    const-string v3, "TROUBLESHOOTING"

    const-string v4, "TrblShooting0"

    .line 132
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->TROUBLESHOOTING:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    const/4 v2, 0x6

    const-string v3, "WIKI"

    const-string v4, "Wiki"

    .line 133
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->WIKI:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->$VALUES:[Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->parameterValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;
    .locals 1

    const-class v0, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->$VALUES:[Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    invoke-virtual {v0}, [Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    return-object v0
.end method


# virtual methods
.method public final getParameterValue()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->parameterValue:Ljava/lang/String;

    return-object v0
.end method
