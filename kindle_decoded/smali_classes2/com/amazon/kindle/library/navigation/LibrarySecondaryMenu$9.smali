.class Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$9;
.super Ljava/lang/Object;
.source "LibrarySecondaryMenu.java"

# interfaces
.implements Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->createLibraryViewDisplayer()Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;
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

    .line 530
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$9;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$9;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-static {v0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$800(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;Lcom/amazon/kindle/krx/library/LibraryView;)V

    return-void
.end method
