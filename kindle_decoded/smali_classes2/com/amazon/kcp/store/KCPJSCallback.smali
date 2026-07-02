.class public Lcom/amazon/kcp/store/KCPJSCallback;
.super Ljava/lang/Object;
.source "KCPJSCallback.java"


# static fields
.field private static final KEY_CALLBACK_INDEX:Ljava/lang/String; = "index"

.field private static final KEY_METHOD_NAME:Ljava/lang/String; = "methodName"

.field private static final KEY_OBJECT_NAME:Ljava/lang/String; = "objectName"


# instance fields
.field private callbackInformation:Ljava/lang/String;

.field private jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/store/KCPJSCallback;->callbackInformation:Ljava/lang/String;

    return-void
.end method
