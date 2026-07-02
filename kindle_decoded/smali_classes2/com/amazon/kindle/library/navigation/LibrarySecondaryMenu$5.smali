.class Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$5;
.super Ljava/lang/Object;
.source "LibrarySecondaryMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->updateMenuItemTextInUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$5;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$5;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-virtual {v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->updateMenuItemText()V

    return-void
.end method
