.class Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1;
.super Ljava/lang/Object;
.source "ContentSchemeBookOpenHelperActivity.java"

# interfaces
.implements Lcom/amazon/foundation/IStringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1;->this$0:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1;->this$0:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;

    new-instance v1, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1$1;-><init>(Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
