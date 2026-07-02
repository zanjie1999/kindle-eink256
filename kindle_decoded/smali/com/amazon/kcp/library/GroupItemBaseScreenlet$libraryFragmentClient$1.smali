.class public final Lcom/amazon/kcp/library/GroupItemBaseScreenlet$libraryFragmentClient$1;
.super Lcom/amazon/kcp/library/fragments/LibraryFragmentClientAdapter;
.source "GroupItemBaseScreenlet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/GroupItemBaseScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/GroupItemBaseScreenlet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$libraryFragmentClient$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$libraryFragmentClient$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getSupportFragmentManager$LibraryModule_release()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$libraryFragmentClient$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getScreenContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    return-object v0
.end method

.method public setLibraryMenuOptionsBarEnabled(Z)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$libraryFragmentClient$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getLibraryMenuOptionsBar()Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->setLibraryMenuOptionsBarEnabled(Z)V

    :cond_0
    return-void
.end method
