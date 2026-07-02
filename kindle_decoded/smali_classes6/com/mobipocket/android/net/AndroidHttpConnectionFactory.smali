.class public Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;
.super Ljava/lang/Object;
.source "AndroidHttpConnectionFactory.java"

# interfaces
.implements Lcom/amazon/system/net/HttpConnectionFactory;


# static fields
.field private static final MAX_PARALLEL_CONNECTIONS:I = 0x3


# instance fields
.field private final localeManager:Lcom/amazon/kindle/services/locale/ILocaleManager;

.field private maxResponseSize:I


# direct methods
.method public constructor <init>(ILcom/amazon/kindle/services/locale/ILocaleManager;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;->maxResponseSize:I

    .line 37
    iput-object p2, p0, Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;->localeManager:Lcom/amazon/kindle/services/locale/ILocaleManager;

    return-void
.end method


# virtual methods
.method public getHttpConnection()Lcom/amazon/system/net/HttpConnection;
    .locals 3

    .line 42
    new-instance v0, Lcom/mobipocket/android/net/AndroidHttpConnection;

    iget v1, p0, Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;->maxResponseSize:I

    iget-object v2, p0, Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;->localeManager:Lcom/amazon/kindle/services/locale/ILocaleManager;

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/android/net/AndroidHttpConnection;-><init>(ILcom/amazon/kindle/services/locale/ILocaleManager;)V

    return-object v0
.end method
