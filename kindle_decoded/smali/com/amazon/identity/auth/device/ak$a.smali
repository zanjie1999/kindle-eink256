.class Lcom/amazon/identity/auth/device/ak$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private bi:Ljava/lang/String;

.field private bm:Z

.field private cX:Landroid/content/res/XmlResourceParser;

.field private final cY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cZ:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ak$a;->cY:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ak$a;-><init>()V

    return-void
.end method

.method private al(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 209
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/ak$a;->e(I)V

    .line 211
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ak$a;->am(Ljava/lang/String;)V

    return-void
.end method

.method private am(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ak$a;->cX:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 218
    :cond_0
    new-instance p1, Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;

    invoke-direct {p1}, Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;-><init>()V

    throw p1
.end method

.method private e(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ak$a;->cX:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_1

    .line 108
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ak$a;->cX:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->nextTag()I

    move-result v0

    :goto_1
    if-ne v0, p1, :cond_2

    return-void

    .line 117
    :cond_2
    new-instance p1, Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;

    invoke-direct {p1}, Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Lcom/amazon/identity/auth/device/aj;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;
        }
    .end annotation

    const-string/jumbo v0, "token-types"

    const-string v1, "account-sub-authenticator"

    .line 48
    iput-object p3, p0, Lcom/amazon/identity/auth/device/ak$a;->cX:Landroid/content/res/XmlResourceParser;

    const/4 p3, 0x0

    .line 1092
    :try_start_0
    invoke-direct {p0, p3}, Lcom/amazon/identity/auth/device/ak$a;->e(I)V

    .line 1124
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/ak$a;->al(Ljava/lang/String;)V

    .line 1127
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ak$a;->cX:Landroid/content/res/XmlResourceParser;

    const-string v3, "accountType"

    const/4 v4, 0x0

    .line 1128
    invoke-interface {v2, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.account"

    .line 1130
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1135
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ak$a;->cX:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v3, "type"

    invoke-interface {v2, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x3

    if-eqz v2, :cond_4

    const-string v6, "DMS"

    .line 1136
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1151
    iput-boolean v3, p0, Lcom/amazon/identity/auth/device/ak$a;->cZ:Z

    .line 1153
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ak$a;->cX:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v5, :cond_6

    .line 1155
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ak$a;->cX:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    .line 1157
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/ak$a;->e(I)V

    const-string v2, "device-type"

    .line 1159
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ak$a;->cX:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ak$a;->bi:Ljava/lang/String;

    goto :goto_3

    :cond_0
    const-string/jumbo v2, "multiple-account-aware"

    .line 1163
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1165
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ak$a;->cX:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    .line 2060
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "yes"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 1165
    :goto_2
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/ak$a;->bm:Z

    .line 2235
    :goto_3
    invoke-direct {p0, v5}, Lcom/amazon/identity/auth/device/ak$a;->e(I)V

    goto :goto_0

    .line 1169
    :cond_3
    new-instance p1, Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;

    invoke-direct {p1}, Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;-><init>()V

    throw p1

    .line 3180
    :cond_4
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/ak$a;->al(Ljava/lang/String;)V

    .line 3182
    :goto_4
    iget-object p3, p0, Lcom/amazon/identity/auth/device/ak$a;->cX:Landroid/content/res/XmlResourceParser;

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->nextTag()I

    move-result p3

    if-eq p3, v5, :cond_5

    const-string/jumbo p3, "token-type"

    .line 3195
    invoke-direct {p0, p3}, Lcom/amazon/identity/auth/device/ak$a;->am(Ljava/lang/String;)V

    .line 3198
    iget-object p3, p0, Lcom/amazon/identity/auth/device/ak$a;->cX:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v2, "name"

    .line 3199
    invoke-interface {p3, v4, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3235
    invoke-direct {p0, v5}, Lcom/amazon/identity/auth/device/ak$a;->e(I)V

    .line 3203
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ak$a;->cY:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3188
    :cond_5
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/ak$a;->am(Ljava/lang/String;)V

    .line 4225
    :cond_6
    iget-object p3, p0, Lcom/amazon/identity/auth/device/ak$a;->cX:Landroid/content/res/XmlResourceParser;

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 4235
    invoke-direct {p0, v5}, Lcom/amazon/identity/auth/device/ak$a;->e(I)V

    .line 5098
    :cond_7
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/ak$a;->e(I)V

    .line 54
    iget-boolean p3, p0, Lcom/amazon/identity/auth/device/ak$a;->cZ:Z

    if-eqz p3, :cond_8

    .line 56
    iget-object p3, p0, Lcom/amazon/identity/auth/device/ak$a;->bi:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/ak$a;->bm:Z

    .line 6077
    new-instance v1, Lcom/amazon/identity/auth/device/aj;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    .line 63
    :cond_8
    iget-object p3, p0, Lcom/amazon/identity/auth/device/ak$a;->cY:Ljava/util/List;

    .line 7069
    new-instance v0, Lcom/amazon/identity/auth/device/aj;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 1132
    :cond_9
    new-instance p1, Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;

    invoke-direct {p1}, Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;-><init>()V

    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 75
    new-instance p2, Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 71
    new-instance p2, Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
