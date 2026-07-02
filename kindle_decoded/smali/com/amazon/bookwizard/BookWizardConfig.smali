.class public Lcom/amazon/bookwizard/BookWizardConfig;
.super Ljava/lang/Object;
.source "BookWizardConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/BookWizardConfig$Type;,
        Lcom/amazon/bookwizard/BookWizardConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/bookwizard/BookWizardConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final STEP_COUNT:I = 0x2


# instance fields
.field private cor:Ljava/lang/String;

.field private final isCorInferred:Z

.field private final isEligibleForMonth:Z

.field private isEligibleForPreview:Z

.field private isSubscribed:Z

.field private final isViaNotification:Z

.field private final skipSignup:Z

.field private final type:Lcom/amazon/bookwizard/BookWizardConfig$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/amazon/bookwizard/BookWizardConfig$1;

    invoke-direct {v0}, Lcom/amazon/bookwizard/BookWizardConfig$1;-><init>()V

    sput-object v0, Lcom/amazon/bookwizard/BookWizardConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/bookwizard/BookWizardConfig$Type;ZLjava/lang/String;ZZZZZ)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardConfig;->type:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    .line 119
    iput-boolean p2, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForMonth:Z

    .line 120
    iput-object p3, p0, Lcom/amazon/bookwizard/BookWizardConfig;->cor:Ljava/lang/String;

    .line 121
    iput-boolean p4, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isCorInferred:Z

    .line 122
    iput-boolean p5, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isSubscribed:Z

    .line 123
    iput-boolean p6, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForPreview:Z

    .line 124
    iput-boolean p7, p0, Lcom/amazon/bookwizard/BookWizardConfig;->skipSignup:Z

    .line 125
    iput-boolean p8, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isViaNotification:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/bookwizard/BookWizardConfig$Type;ZLjava/lang/String;ZZZZZLcom/amazon/bookwizard/BookWizardConfig$1;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p8}, Lcom/amazon/bookwizard/BookWizardConfig;-><init>(Lcom/amazon/bookwizard/BookWizardConfig$Type;ZLjava/lang/String;ZZZZZ)V

    return-void
.end method

.method public static from(Ljava/io/File;)Lcom/amazon/bookwizard/BookWizardConfig;
    .locals 5

    .line 60
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    :try_start_0
    const-string v1, "UTF-8"

    .line 62
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/common/io/Files;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "="

    .line 63
    invoke-static {v1, v4}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 64
    array-length v4, v1

    if-le v4, v3, :cond_0

    .line 65
    aget-object v2, v1, v2

    aget-object v1, v1, v3

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :cond_1
    new-instance p0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    invoke-direct {p0}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;-><init>()V

    sget-object v1, Lcom/amazon/bookwizard/BookWizardConfig$Type;->FILE:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    .line 74
    invoke-virtual {p0, v1}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setType(Lcom/amazon/bookwizard/BookWizardConfig$Type;)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    const-string v1, "eligible_for_month"

    .line 75
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setEligibleForMonth(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    const-string v1, "cor"

    .line 76
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setCor(Ljava/lang/String;)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    const-string v4, "cor_inferred"

    .line 77
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setCorInferred(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    const-string v1, "eligible_for_preview"

    .line 78
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setEligibleForPreview(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    const-string v1, "is_via_notification"

    .line 79
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setViaNotification(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    const-string/jumbo v1, "skip_signup"

    .line 80
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setSkipSignup(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    const-string/jumbo v1, "use_gamma"

    .line 81
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setUseGamma(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    .line 82
    invoke-virtual {p0}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->build()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 69
    const-class v0, Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to parse config file"

    invoke-static {v0, v1, p0}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCor()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardConfig;->cor:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSteps()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getType()Lcom/amazon/bookwizard/BookWizardConfig$Type;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardConfig;->type:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    return-object v0
.end method

.method public isEligibleForMonth()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForMonth:Z

    return v0
.end method

.method public isEligibleForPreview()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForPreview:Z

    return v0
.end method

.method public isSubscribed()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isSubscribed:Z

    return v0
.end method

.method public isViaNotification()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isViaNotification:Z

    return v0
.end method

.method public setCor(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardConfig;->cor:Ljava/lang/String;

    return-void
.end method

.method public setEligibleForPreview(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForPreview:Z

    return-void
.end method

.method public setSubscribed(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isSubscribed:Z

    return-void
.end method

.method public showCountryPicker()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardConfig;->cor:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isCorInferred:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public showOfferPage()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForMonth:Z

    return v0
.end method

.method public skipSignup()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/amazon/bookwizard/BookWizardConfig;->skipSignup:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 275
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardConfig;->type:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    const-string v2, "TYPE"

    .line 276
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForMonth:Z

    const-string v2, "ELIGIBLE_FOR_MONTH"

    .line 277
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForPreview:Z

    const-string v2, "ELIGIBLE_FOR_PREVIEW"

    .line 278
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardConfig;->cor:Ljava/lang/String;

    const-string v2, "COR"

    .line 279
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isCorInferred:Z

    const-string v2, "COR_INFERRED"

    .line 280
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/bookwizard/BookWizardConfig;->skipSignup:Z

    const-string v2, "SKIP_SIGNUP"

    .line 281
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isViaNotification:Z

    const-string v2, "IS_VIA_NOTIFICATION"

    .line 282
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    sget-boolean v1, Lcom/amazon/bookwizard/util/BookWizardUtil;->useGamma:Z

    const-string v2, "USE_GAMMA"

    .line 283
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 284
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 261
    iget-boolean p2, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForMonth:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object p2, p0, Lcom/amazon/bookwizard/BookWizardConfig;->cor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-boolean p2, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isCorInferred:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-boolean p2, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isSubscribed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-boolean p2, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isEligibleForPreview:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-boolean p2, p0, Lcom/amazon/bookwizard/BookWizardConfig;->skipSignup:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-boolean p2, p0, Lcom/amazon/bookwizard/BookWizardConfig;->isViaNotification:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
