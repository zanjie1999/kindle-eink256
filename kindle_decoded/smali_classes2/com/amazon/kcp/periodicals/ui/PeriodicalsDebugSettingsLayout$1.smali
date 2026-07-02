.class Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsLayout$1;
.super Ljava/lang/Object;
.source "PeriodicalsDebugSettingsLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsLayout;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsLayout$1;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v2, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
