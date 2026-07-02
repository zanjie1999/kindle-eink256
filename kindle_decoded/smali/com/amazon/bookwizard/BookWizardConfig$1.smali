.class final Lcom/amazon/bookwizard/BookWizardConfig$1;
.super Ljava/lang/Object;
.source "BookWizardConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/BookWizardConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/bookwizard/BookWizardConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/bookwizard/BookWizardConfig;
    .locals 4

    .line 34
    new-instance v0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    invoke-direct {v0}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;-><init>()V

    sget-object v1, Lcom/amazon/bookwizard/BookWizardConfig$Type;->STATE:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    .line 35
    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setType(Lcom/amazon/bookwizard/BookWizardConfig$Type;)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setEligibleForMonth(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setCor(Ljava/lang/String;)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setCorInferred(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setSubscribed(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setEligibleForPreview(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setSkipSignup(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v0, v2}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setViaNotification(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    .line 43
    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->build()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/BookWizardConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/bookwizard/BookWizardConfig;
    .locals 0

    .line 48
    new-array p1, p1, [Lcom/amazon/bookwizard/BookWizardConfig;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/BookWizardConfig$1;->newArray(I)[Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object p1

    return-object p1
.end method
