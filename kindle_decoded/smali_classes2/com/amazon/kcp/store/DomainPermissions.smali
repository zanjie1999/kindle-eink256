.class public final enum Lcom/amazon/kcp/store/DomainPermissions;
.super Ljava/lang/Enum;
.source "DomainPermissions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/store/DomainPermissions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/DomainPermissions;

.field private static final ABOUT_BLANK_URL:Ljava/lang/String; = "about:blank"

.field public static final enum ALIPAY:Lcom/amazon/kcp/store/DomainPermissions;

.field public static final enum AMAZON:Lcom/amazon/kcp/store/DomainPermissions;

.field public static final enum AMAZON_FORUM:Lcom/amazon/kcp/store/DomainPermissions;

.field public static final enum AMAZON_MEDIA:Lcom/amazon/kcp/store/DomainPermissions;

.field public static final enum DEFAULT:Lcom/amazon/kcp/store/DomainPermissions;

.field public static final enum SALESFORCE:Lcom/amazon/kcp/store/DomainPermissions;


# instance fields
.field private javascriptAllowed:Z

.field private storeCookiesAllowed:Z

.field private webviewAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 12
    new-instance v6, Lcom/amazon/kcp/store/DomainPermissions;

    const-string v1, "AMAZON"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/store/DomainPermissions;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v6, Lcom/amazon/kcp/store/DomainPermissions;->AMAZON:Lcom/amazon/kcp/store/DomainPermissions;

    .line 13
    new-instance v0, Lcom/amazon/kcp/store/DomainPermissions;

    const-string v8, "AMAZON_FORUM"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/store/DomainPermissions;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/amazon/kcp/store/DomainPermissions;->AMAZON_FORUM:Lcom/amazon/kcp/store/DomainPermissions;

    .line 14
    new-instance v0, Lcom/amazon/kcp/store/DomainPermissions;

    const-string v2, "AMAZON_MEDIA"

    const/4 v3, 0x2

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/store/DomainPermissions;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/amazon/kcp/store/DomainPermissions;->AMAZON_MEDIA:Lcom/amazon/kcp/store/DomainPermissions;

    .line 15
    new-instance v0, Lcom/amazon/kcp/store/DomainPermissions;

    const-string v8, "SALESFORCE"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/store/DomainPermissions;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/amazon/kcp/store/DomainPermissions;->SALESFORCE:Lcom/amazon/kcp/store/DomainPermissions;

    .line 21
    new-instance v0, Lcom/amazon/kcp/store/DomainPermissions;

    const-string v2, "ALIPAY"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/store/DomainPermissions;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/amazon/kcp/store/DomainPermissions;->ALIPAY:Lcom/amazon/kcp/store/DomainPermissions;

    .line 22
    new-instance v0, Lcom/amazon/kcp/store/DomainPermissions;

    const-string v8, "DEFAULT"

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/store/DomainPermissions;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/amazon/kcp/store/DomainPermissions;->DEFAULT:Lcom/amazon/kcp/store/DomainPermissions;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/amazon/kcp/store/DomainPermissions;

    .line 11
    sget-object v2, Lcom/amazon/kcp/store/DomainPermissions;->AMAZON:Lcom/amazon/kcp/store/DomainPermissions;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/store/DomainPermissions;->AMAZON_FORUM:Lcom/amazon/kcp/store/DomainPermissions;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/store/DomainPermissions;->AMAZON_MEDIA:Lcom/amazon/kcp/store/DomainPermissions;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/store/DomainPermissions;->SALESFORCE:Lcom/amazon/kcp/store/DomainPermissions;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/store/DomainPermissions;->ALIPAY:Lcom/amazon/kcp/store/DomainPermissions;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kcp/store/DomainPermissions;->$VALUES:[Lcom/amazon/kcp/store/DomainPermissions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-boolean p3, p0, Lcom/amazon/kcp/store/DomainPermissions;->webviewAllowed:Z

    .line 30
    iput-boolean p4, p0, Lcom/amazon/kcp/store/DomainPermissions;->javascriptAllowed:Z

    .line 31
    iput-boolean p5, p0, Lcom/amazon/kcp/store/DomainPermissions;->storeCookiesAllowed:Z

    return-void
.end method

.method public static fromUrl(Ljava/lang/String;)Lcom/amazon/kcp/store/DomainPermissions;
    .locals 1

    if-nez p0, :cond_0

    .line 57
    sget-object p0, Lcom/amazon/kcp/store/DomainPermissions;->DEFAULT:Lcom/amazon/kcp/store/DomainPermissions;

    return-object p0

    :cond_0
    const-string v0, "about:blank"

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 61
    invoke-static {p0}, Lcom/amazon/kcp/store/StoreUtils;->isAmazonUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {p0}, Lcom/amazon/kcp/store/StoreUtils;->isAlipayUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    sget-object p0, Lcom/amazon/kcp/store/DomainPermissions;->ALIPAY:Lcom/amazon/kcp/store/DomainPermissions;

    return-object p0

    .line 65
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->isForumsInTreatment()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/amazon/kcp/store/StoreUtils;->isAmazonForumUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    sget-object p0, Lcom/amazon/kcp/store/DomainPermissions;->AMAZON_FORUM:Lcom/amazon/kcp/store/DomainPermissions;

    return-object p0

    .line 67
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->isForumsInTreatment()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/amazon/kcp/store/StoreUtils;->isSalesforceUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    sget-object p0, Lcom/amazon/kcp/store/DomainPermissions;->SALESFORCE:Lcom/amazon/kcp/store/DomainPermissions;

    return-object p0

    .line 69
    :cond_4
    invoke-static {p0}, Lcom/amazon/kcp/store/StoreUtils;->isAmazonMediaUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 70
    sget-object p0, Lcom/amazon/kcp/store/DomainPermissions;->AMAZON_MEDIA:Lcom/amazon/kcp/store/DomainPermissions;

    return-object p0

    .line 72
    :cond_5
    sget-object p0, Lcom/amazon/kcp/store/DomainPermissions;->DEFAULT:Lcom/amazon/kcp/store/DomainPermissions;

    return-object p0

    .line 62
    :cond_6
    :goto_0
    sget-object p0, Lcom/amazon/kcp/store/DomainPermissions;->AMAZON:Lcom/amazon/kcp/store/DomainPermissions;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/DomainPermissions;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kcp/store/DomainPermissions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/DomainPermissions;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/DomainPermissions;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kcp/store/DomainPermissions;->$VALUES:[Lcom/amazon/kcp/store/DomainPermissions;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/DomainPermissions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/DomainPermissions;

    return-object v0
.end method


# virtual methods
.method public isJavascriptAllowed()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/amazon/kcp/store/DomainPermissions;->javascriptAllowed:Z

    return v0
.end method

.method public isWebviewAllowed()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/amazon/kcp/store/DomainPermissions;->webviewAllowed:Z

    return v0
.end method
