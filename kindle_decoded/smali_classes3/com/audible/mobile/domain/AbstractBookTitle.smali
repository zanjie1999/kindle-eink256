.class public abstract Lcom/audible/mobile/domain/AbstractBookTitle;
.super Ljava/lang/Object;
.source "AbstractBookTitle.java"

# interfaces
.implements Lcom/audible/mobile/domain/BookTitle;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/domain/BookTitle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final separator:Ljava/lang/String;

.field private final subtitle:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/audible/mobile/domain/AbstractBookTitle$1;

    invoke-direct {v0}, Lcom/audible/mobile/domain/AbstractBookTitle$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/AbstractBookTitle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/audible/mobile/domain/AbstractBookTitle;->title:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/audible/mobile/domain/AbstractBookTitle;->subtitle:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/audible/mobile/domain/AbstractBookTitle;->separator:Ljava/lang/String;

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

    if-ne p0, p1, :cond_0

    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Lcom/audible/mobile/domain/AbstractBookTitle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 83
    :cond_1
    check-cast p1, Lcom/audible/mobile/domain/AbstractBookTitle;

    .line 85
    iget-object v1, p0, Lcom/audible/mobile/domain/AbstractBookTitle;->separator:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/audible/mobile/domain/AbstractBookTitle;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/audible/mobile/domain/AbstractBookTitle;->separator:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/audible/mobile/domain/AbstractBookTitle;->subtitle:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v3, p1, Lcom/audible/mobile/domain/AbstractBookTitle;->subtitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/audible/mobile/domain/AbstractBookTitle;->subtitle:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_1
    return v2

    .line 91
    :cond_5
    iget-object v1, p0, Lcom/audible/mobile/domain/AbstractBookTitle;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/mobile/domain/AbstractBookTitle;->title:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getSeparator()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/audible/mobile/domain/AbstractBookTitle;->separator:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/audible/mobile/domain/AbstractBookTitle;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/audible/mobile/domain/AbstractBookTitle;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/audible/mobile/domain/AbstractBookTitle;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget-object v1, p0, Lcom/audible/mobile/domain/AbstractBookTitle;->subtitle:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget-object v1, p0, Lcom/audible/mobile/domain/AbstractBookTitle;->separator:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/audible/mobile/domain/AbstractBookTitle;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/audible/mobile/domain/AbstractBookTitle;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/audible/mobile/domain/AbstractBookTitle;->getSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/audible/mobile/domain/AbstractBookTitle;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 44
    iget-object p2, p0, Lcom/audible/mobile/domain/AbstractBookTitle;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/audible/mobile/domain/AbstractBookTitle;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/audible/mobile/domain/AbstractBookTitle;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
