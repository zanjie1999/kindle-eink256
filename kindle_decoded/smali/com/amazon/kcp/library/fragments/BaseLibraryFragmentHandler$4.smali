.class Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$4;
.super Ljava/lang/Object;
.source "BaseLibraryFragmentHandler.java"

# interfaces
.implements Lcom/amazon/kcp/library/EmptyLibraryStringProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->getEmptyLibraryStringProvider()Lcom/amazon/kcp/library/EmptyLibraryStringProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$4;->this$0:Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmptyLibraryString(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$4;->this$0:Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->getEmptyLibraryStringId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
