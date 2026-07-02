.class public Lcom/amazon/android/webkit/AmazonMediaDevice;
.super Ljava/lang/Object;
.source "AmazonMediaDevice.java"


# static fields
.field public static final AUDIO:I = 0x0

.field public static final SCREEN:I = 0x2

.field public static final VIDEO:I = 0x1


# instance fields
.field private mDeviceName:Ljava/lang/String;

.field private mMediaType:I

.field private mUniqueDeviceID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonMediaDevice;->mDeviceName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/amazon/android/webkit/AmazonMediaDevice;->mUniqueDeviceID:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/amazon/android/webkit/AmazonMediaDevice;->mMediaType:I

    return-void
.end method


# virtual methods
.method public getDeviceID()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonMediaDevice;->mUniqueDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonMediaDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/amazon/android/webkit/AmazonMediaDevice;->mMediaType:I

    return v0
.end method
