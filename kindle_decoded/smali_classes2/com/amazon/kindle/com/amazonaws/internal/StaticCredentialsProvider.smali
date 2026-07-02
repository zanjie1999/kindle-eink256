.class public Lcom/amazon/kindle/com/amazonaws/internal/StaticCredentialsProvider;
.super Ljava/lang/Object;
.source "StaticCredentialsProvider.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;


# instance fields
.field private final credentials:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/internal/StaticCredentialsProvider;->credentials:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    return-void
.end method


# virtual methods
.method public getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/StaticCredentialsProvider;->credentials:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    return-object v0
.end method
