.class public Lcom/amazon/kindle/com/amazonaws/AbortedException;
.super Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
.source "AbortedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 55
    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isRetryable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
