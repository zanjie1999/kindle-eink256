.class public abstract Lcom/amazon/ksdk/oauth/TokenProvider;
.super Ljava/lang/Object;
.source "TokenProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAccessToken(Lcom/amazon/ksdk/oauth/TokenRequest;)Ljava/lang/String;
.end method
