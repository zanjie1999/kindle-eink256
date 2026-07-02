.class public Lcom/amazon/bookwizard/data/LString;
.super Ljava/lang/Object;
.source "LString.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/bookwizard/data/LString;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_LANGUAGE:Ljava/lang/String;


# instance fields
.field private final language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field private final text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/amazon/bookwizard/data/LString$1;

    invoke-direct {v0}, Lcom/amazon/bookwizard/data/LString$1;-><init>()V

    sput-object v0, Lcom/amazon/bookwizard/data/LString;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 53
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Lcom/amazon/ebook/util/text/LanguageTag;->toLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/data/LString;->DEFAULT_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/amazon/bookwizard/data/LString;->text:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/amazon/bookwizard/data/LString;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 118
    :cond_0
    instance-of v1, p1, Lcom/amazon/bookwizard/data/LString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 122
    :cond_1
    check-cast p1, Lcom/amazon/bookwizard/data/LString;

    .line 123
    iget-object v1, p0, Lcom/amazon/bookwizard/data/LString;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/bookwizard/data/LString;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ebook/util/text/StringUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/bookwizard/data/LString;->language:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/bookwizard/data/LString;->language:Ljava/lang/String;

    .line 124
    invoke-static {v1, p1}, Lcom/amazon/ebook/util/text/StringUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/bookwizard/data/LString;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lcom/amazon/bookwizard/data/LString;->text:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/bookwizard/data/LString;->language:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 132
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/data/LString;->text:Ljava/lang/String;

    const-string v2, "TEXT"

    .line 133
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/data/LString;->language:Ljava/lang/String;

    const-string v2, "LANG"

    .line 134
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 135
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 151
    iget-object p2, p0, Lcom/amazon/bookwizard/data/LString;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Lcom/amazon/bookwizard/data/LString;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
