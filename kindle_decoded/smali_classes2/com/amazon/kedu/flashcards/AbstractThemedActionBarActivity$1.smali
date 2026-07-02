.class Lcom/amazon/kedu/flashcards/AbstractThemedActionBarActivity$1;
.super Ljava/lang/Object;
.source "AbstractThemedActionBarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/AbstractThemedActionBarActivity;->onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/AbstractThemedActionBarActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/AbstractThemedActionBarActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/AbstractThemedActionBarActivity$1;->this$0:Lcom/amazon/kedu/flashcards/AbstractThemedActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 101
    invoke-static {}, Lcom/amazon/kedu/flashcards/AbstractThemedActionBarActivity;->access$000()Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/AbstractThemedActionBarActivity$1;->this$0:Lcom/amazon/kedu/flashcards/AbstractThemedActionBarActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
