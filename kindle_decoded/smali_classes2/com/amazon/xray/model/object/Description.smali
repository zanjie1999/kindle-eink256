.class public Lcom/amazon/xray/model/object/Description;
.super Ljava/lang/Object;
.source "Description.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/xray/model/object/Description;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fromBook:Z

.field private final label:Ljava/lang/String;

.field private final licenseLabel:Ljava/lang/String;

.field private final licenseUrl:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/amazon/xray/model/object/Description$1;

    invoke-direct {v0}, Lcom/amazon/xray/model/object/Description$1;-><init>()V

    sput-object v0, Lcom/amazon/xray/model/object/Description;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/amazon/xray/util/Validate;->notEmpty(Ljava/lang/CharSequence;)V

    .line 55
    iput-object p1, p0, Lcom/amazon/xray/model/object/Description;->text:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/amazon/xray/model/object/Description;->label:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/amazon/xray/model/object/Description;->url:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/amazon/xray/model/object/Description;->licenseLabel:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/amazon/xray/model/object/Description;->licenseUrl:Ljava/lang/String;

    .line 60
    iput-boolean p6, p0, Lcom/amazon/xray/model/object/Description;->fromBook:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/xray/model/object/Description;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseLabel()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/xray/model/object/Description;->licenseLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseUrl()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/xray/model/object/Description;->licenseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/xray/model/object/Description;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/xray/model/object/Description;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isFromBook()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/amazon/xray/model/object/Description;->fromBook:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 112
    iget-object p2, p0, Lcom/amazon/xray/model/object/Description;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lcom/amazon/xray/model/object/Description;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/amazon/xray/model/object/Description;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/amazon/xray/model/object/Description;->licenseLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lcom/amazon/xray/model/object/Description;->licenseUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-boolean p2, p0, Lcom/amazon/xray/model/object/Description;->fromBook:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
