.class public Lcom/amazon/kindle/dcaps/common/Application;
.super Ljava/lang/Object;
.source "Application.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kindle/dcaps/common/Application;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/amazon/kindle/dcaps/common/Application;->context:Landroid/content/Context;

    return-void
.end method
