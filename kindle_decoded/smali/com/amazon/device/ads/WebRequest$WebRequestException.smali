.class public Lcom/amazon/device/ads/WebRequest$WebRequestException;
.super Ljava/lang/Exception;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/WebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebRequestException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x451d75126c2e360cL


# instance fields
.field private final status:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

.field final synthetic this$0:Lcom/amazon/device/ads/WebRequest;


# direct methods
.method protected constructor <init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 942
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest$WebRequestException;->this$0:Lcom/amazon/device/ads/WebRequest;

    .line 943
    invoke-direct {p0, p3, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 944
    iput-object p2, p0, Lcom/amazon/device/ads/WebRequest$WebRequestException;->status:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/amazon/device/ads/WebRequest$WebRequestStatus;
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$WebRequestException;->status:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    return-object v0
.end method
