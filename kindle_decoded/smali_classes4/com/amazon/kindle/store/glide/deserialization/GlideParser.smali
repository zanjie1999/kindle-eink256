.class public final Lcom/amazon/kindle/store/glide/deserialization/GlideParser;
.super Ljava/lang/Object;
.source "GlideParser.java"


# static fields
.field private static final GSON:Lcom/google/gson/Gson;

.field private static final PARSER:Lcom/google/gson/JsonParser;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->GSON:Lcom/google/gson/Gson;

    .line 53
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    sput-object v0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->PARSER:Lcom/google/gson/JsonParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You should not instantiate an instance of this class!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static extractActionProgram(Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideActionProgram;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;
    .locals 5

    if-nez p0, :cond_0

    .line 206
    sget-object p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->NO_PROGRAM:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-object p0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideActionProgram;->getProgramCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x41860546

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x48dba5f

    if-eq v1, v2, :cond_2

    const v2, 0x9f01f0f

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "KINDLE_UNLIMITED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "PRIME"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "COMICS_UNLIMITED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x2

    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    .line 219
    sget-object p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->UNKNOWN:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-object p0

    .line 217
    :cond_5
    sget-object p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->COMICS_UNLIMITED:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-object p0

    .line 215
    :cond_6
    sget-object p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->PRIME_READING:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-object p0

    .line 213
    :cond_7
    sget-object p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->KINDLE_UNLIMITED:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-object p0
.end method

.method private static extractActionType(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;
    .locals 1

    const-string v0, "Buy"

    .line 188
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    sget-object p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->BUY:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    return-object p0

    :cond_0
    const-string v0, "Borrow"

    .line 192
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    sget-object p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->BORROW:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    return-object p0

    :cond_1
    const-string v0, "Gift"

    .line 196
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 197
    sget-object p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->GIFT:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    return-object p0

    .line 200
    :cond_2
    sget-object p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->UNKNOWN:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    return-object p0
.end method

.method private static extractAsinOffersFromActionOutput(Ljava/lang/String;Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedActionOutput;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedActionOutput;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/glide/KRXAsinOffer;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedActionOutput;->getPersonalizedActions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;->getActionType()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;->getCsrfToken()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;->getActionId()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {v2}, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->extractActionType(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v2

    .line 122
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;->getActionProgram()Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideActionProgram;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->extractActionProgram(Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideActionProgram;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v5

    .line 123
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction;->getGlideOffer()Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer;

    move-result-object v1

    .line 124
    new-instance v6, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    invoke-direct {v6}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;-><init>()V

    .line 125
    invoke-virtual {v6, p0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v6

    .line 126
    invoke-virtual {v6, v4}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setOfferId(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v4

    .line 127
    invoke-virtual {v4, v5}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setActionProgram(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v4

    .line 128
    invoke-virtual {v4, v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setActionType(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v2

    .line 129
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setCsrfToken(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer;->isConditional()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setConditional(Z)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    .line 133
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer;->getPrice()Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer$GlidePrice;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 134
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer;->getPrice()Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer$GlidePrice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer$GlidePrice;->getValue()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setPrice(Ljava/math/BigDecimal;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v3

    .line 135
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer;->getPrice()Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer$GlidePrice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer$GlidePrice;->getCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setCurrency(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    move-result-object v3

    .line 136
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer;->getPrice()Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer$GlidePrice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideOffer$GlidePrice;->getDisplayablePrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->setDisplayablePrice(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;

    .line 139
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->build()Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method private static extractBadgeInfosFromBadgeOutput(Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedBadgeOutput;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedBadgeOutput;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedBadgeOutput;->getPersonalizedBadges()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 151
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge;

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge;->getGlideOffer()Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideOffer;

    move-result-object v2

    .line 156
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge;->getGlideImages()Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;

    move-result-object v3

    .line 157
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge;->getActionProgram()Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideActionProgram;

    move-result-object v1

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    new-instance v4, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;

    invoke-direct {v4}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;-><init>()V

    .line 163
    invoke-virtual {v3}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->getBadge()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->setBadge(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;

    move-result-object v4

    .line 164
    invoke-virtual {v3}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->isHeadphones()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->setIsHeadphones(Z)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;

    move-result-object v4

    .line 165
    invoke-virtual {v3}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->getyAxis()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->setYAxis(I)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;

    move-result-object v4

    .line 166
    invoke-virtual {v3}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->getDarkBadge()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->setDarkBadge(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;

    move-result-object v4

    .line 167
    invoke-virtual {v3}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->getAltText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->setAltText(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;

    move-result-object v4

    .line 168
    invoke-virtual {v3}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->getSticker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->setSticker(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;

    move-result-object v4

    .line 169
    invoke-virtual {v3}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->getDarkSticker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->setDarkSticker(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;

    move-result-object v4

    .line 170
    invoke-virtual {v3}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->getMediaServicesPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->setMediaServicesPrefix(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;

    move-result-object v4

    .line 171
    invoke-virtual {v3}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideImages;->getDarkMediaServicesPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->setDarkMediaServicesPrefix(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;

    move-result-object v3

    .line 172
    invoke-virtual {v2}, Lcom/amazon/kindle/store/glide/model/GlidePersonalizedBadge$GlideOffer;->isConditional()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->setConditional(Z)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;

    move-result-object v2

    .line 173
    invoke-static {v1}, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->extractActionProgram(Lcom/amazon/kindle/store/glide/model/GlidePersonalizedAction$GlideActionProgram;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->setActionProgram(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->build()Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;

    move-result-object v1

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHeadphones: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->isHeadphones()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    return-object v0
.end method

.method public static getOffersFromGlideResponse(Lcom/amazon/kindle/store/glide/model/GlideGetOffersResponse;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/store/glide/model/GlideGetOffersResponse;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResponse;->getResources()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 69
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource;

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource;->getAsin()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource;->getPersonalizedActionOutput()Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedActionOutput;

    move-result-object v3

    .line 74
    invoke-virtual {v1}, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource;->getPersonalizedBadgeOutput()Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedBadgeOutput;

    move-result-object v1

    if-eqz v3, :cond_2

    .line 76
    invoke-static {v2, v3}, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->extractAsinOffersFromActionOutput(Ljava/lang/String;Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedActionOutput;)Ljava/util/List;

    move-result-object v4

    .line 77
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 78
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->getAsinOffers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 81
    :cond_1
    new-instance v5, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedActionOutput;->getAvailability()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v6, v3}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 87
    invoke-static {v1}, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->extractBadgeInfosFromBadgeOutput(Lcom/amazon/kindle/store/glide/model/GlideGetOffersResource$GlidePersonalizedBadgeOutput;)Ljava/util/List;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->getBadgeInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 92
    :cond_3
    new-instance v3, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4, v1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static parseAcquisitionResponse(Ljava/lang/String;)Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResponse;
    .locals 2

    .line 252
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->PARSER:Lcom/google/gson/JsonParser;

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 253
    new-instance v0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser$2;

    invoke-direct {v0}, Lcom/amazon/kindle/store/glide/deserialization/GlideParser$2;-><init>()V

    .line 254
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 255
    sget-object v1, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/store/glide/model/GlideAcquisitionResponse;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 263
    :catch_0
    sget-object p0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->TAG:Ljava/lang/String;

    const-string v0, "Unable to parse the json string because the reponse string is null!"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :catch_1
    sget-object p0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->TAG:Ljava/lang/String;

    const-string v0, "Unable to parse the json string!"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :catch_2
    sget-object p0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->TAG:Ljava/lang/String;

    const-string v0, "The response string is not a valid json string"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :catch_3
    sget-object p0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->TAG:Ljava/lang/String;

    const-string v0, "The response string is messed up!"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseGetOfferResponse(Ljava/lang/String;)Lcom/amazon/kindle/store/glide/model/GlideGetOffersResponse;
    .locals 2

    .line 226
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->PARSER:Lcom/google/gson/JsonParser;

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 227
    new-instance v0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser$1;

    invoke-direct {v0}, Lcom/amazon/kindle/store/glide/deserialization/GlideParser$1;-><init>()V

    .line 228
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 229
    sget-object v1, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/store/glide/model/GlideGetOffersResponse;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 237
    :catch_0
    sget-object p0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->TAG:Ljava/lang/String;

    const-string v0, "Unable to parse the json string because the response string is null!"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :catch_1
    sget-object p0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->TAG:Ljava/lang/String;

    const-string v0, "Unable to parse the json string!"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :catch_2
    sget-object p0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->TAG:Ljava/lang/String;

    const-string v0, "The response string is not a valid json string!"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :catch_3
    sget-object p0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->TAG:Ljava/lang/String;

    const-string v0, "The response string is messed up!"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseReturnResponse(Ljava/lang/String;)Lcom/amazon/kindle/store/glide/model/GlideReturnResponse;
    .locals 2

    .line 278
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->PARSER:Lcom/google/gson/JsonParser;

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 279
    new-instance v0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser$3;

    invoke-direct {v0}, Lcom/amazon/kindle/store/glide/deserialization/GlideParser$3;-><init>()V

    .line 280
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 281
    sget-object v1, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/store/glide/model/GlideReturnResponse;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 289
    :catch_0
    sget-object p0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->TAG:Ljava/lang/String;

    const-string v0, "Unable to parse the json string because the reponse string is null!"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :catch_1
    sget-object p0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->TAG:Ljava/lang/String;

    const-string v0, "Unable to parse the json string!"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :catch_2
    sget-object p0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->TAG:Ljava/lang/String;

    const-string v0, "The response string is not a valid json string"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :catch_3
    sget-object p0, Lcom/amazon/kindle/store/glide/deserialization/GlideParser;->TAG:Ljava/lang/String;

    const-string v0, "The response string is messed up!"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
