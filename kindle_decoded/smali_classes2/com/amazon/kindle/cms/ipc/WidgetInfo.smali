.class public final Lcom/amazon/kindle/cms/ipc/WidgetInfo;
.super Ljava/lang/Object;
.source "WidgetInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/cms/ipc/WidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURRENT_VERSION:I = 0x1

.field private static final s_Utf8Charset:Ljava/nio/charset/Charset;


# instance fields
.field private final m_data:[B

.field private final m_type:Ljava/lang/String;

.field private final m_version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/amazon/kindle/cms/ipc/WidgetInfo$1;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/WidgetInfo$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/WidgetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "UTF-8"

    .line 73
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cms/ipc/WidgetInfo;->s_Utf8Charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/cms/ipc/WidgetInfo;->m_version:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/WidgetInfo;->m_type:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/cms/ipc/WidgetInfo;->m_data:[B

    return-void

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "invalid widget data"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 54
    iget p2, p0, Lcom/amazon/kindle/cms/ipc/WidgetInfo;->m_version:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object p2, p0, Lcom/amazon/kindle/cms/ipc/WidgetInfo;->m_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/amazon/kindle/cms/ipc/WidgetInfo;->m_data:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
