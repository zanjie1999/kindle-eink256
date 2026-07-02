.class public Lcom/amazon/sitb/android/utils/WeblabClient;
.super Ljava/lang/Object;
.source "WeblabClient.java"


# instance fields
.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/sitb/android/utils/WeblabClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public isGlideWeblabEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
