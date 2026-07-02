.class public abstract Lcom/amazon/android/webkit/AmazonRequestManager;
.super Ljava/lang/Object;
.source "AmazonRequestManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fireOutOfBandUrlRequest(Lcom/amazon/android/webkit/AmazonWebKitFactory$OutOfBandResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/webkit/AmazonWebKitFactory$OutOfBandResponseListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation
.end method
