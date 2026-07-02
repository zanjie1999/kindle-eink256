.class public final Lcom/audible/playersdk/notification/PlayerService$PlayerNotificationServiceBinderImpl;
.super Landroid/os/Binder;
.source "PlayerService.kt"

# interfaces
.implements Lcom/audible/playersdk/notification/PlayerNotificationServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/playersdk/notification/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlayerNotificationServiceBinderImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/playersdk/notification/PlayerService;


# direct methods
.method public constructor <init>(Lcom/audible/playersdk/notification/PlayerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/audible/playersdk/notification/PlayerService$PlayerNotificationServiceBinderImpl;->this$0:Lcom/audible/playersdk/notification/PlayerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
