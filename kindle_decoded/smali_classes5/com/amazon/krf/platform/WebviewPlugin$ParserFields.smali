.class public Lcom/amazon/krf/platform/WebviewPlugin$ParserFields;
.super Ljava/lang/Object;
.source "WebviewPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/WebviewPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParserFields"
.end annotation


# static fields
.field public static final SetAutomaticPlayDelay:Ljava/lang/String; = "setAutomaticPlayDelay"

.field public static final SetAutomaticallyPlay:Ljava/lang/String; = "setAutomaticallyPlay"

.field public static final SetBackgroundTransparent:Ljava/lang/String; = "setBackgroundTransparent"

.field public static final SetContentResourceUri:Ljava/lang/String; = "setContentResourceUri"

.field public static final SetResourceProvider:Ljava/lang/String; = "setResourceProvider"

.field public static final SetScaleContentToFit:Ljava/lang/String; = "setScaleContentToFit"

.field public static final SetUserInteractionEnabled:Ljava/lang/String; = "setUserInteractionEnabled"


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/WebviewPlugin;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/WebviewPlugin;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin$ParserFields;->this$0:Lcom/amazon/krf/platform/WebviewPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
