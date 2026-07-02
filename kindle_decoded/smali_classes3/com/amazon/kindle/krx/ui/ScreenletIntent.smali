.class public final Lcom/amazon/kindle/krx/ui/ScreenletIntent;
.super Ljava/lang/Object;
.source "ScreenletIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/krx/ui/ScreenletIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extras:Landroid/os/Bundle;

.field private final screenletType:Lcom/amazon/kindle/krx/ui/ScreenletType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lcom/amazon/kindle/krx/ui/ScreenletIntent$1;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/ui/ScreenletIntent$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/ui/ScreenletType;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletType;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/ui/ScreenletType;Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->screenletType:Lcom/amazon/kindle/krx/ui/ScreenletType;

    .line 46
    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->extras:Landroid/os/Bundle;

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "screenletType is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getScreenletType()Lcom/amazon/kindle/krx/ui/ScreenletType;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->screenletType:Lcom/amazon/kindle/krx/ui/ScreenletType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->screenletType:Lcom/amazon/kindle/krx/ui/ScreenletType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 84
    iget-object p2, p0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->screenletType:Lcom/amazon/kindle/krx/ui/ScreenletType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 85
    iget-object p2, p0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
