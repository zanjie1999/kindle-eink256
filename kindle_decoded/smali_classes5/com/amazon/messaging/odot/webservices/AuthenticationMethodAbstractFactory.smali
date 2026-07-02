.class public Lcom/amazon/messaging/odot/webservices/AuthenticationMethodAbstractFactory;
.super Ljava/lang/Object;
.source "AuthenticationMethodAbstractFactory.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/AuthenticationMethodAbstractFactory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;
    .locals 2

    .line 15
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/AuthenticationMethodAbstractFactory;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
