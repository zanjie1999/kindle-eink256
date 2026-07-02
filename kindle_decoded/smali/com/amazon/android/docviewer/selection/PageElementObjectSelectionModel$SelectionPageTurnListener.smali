.class public Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;
.super Lcom/amazon/android/docviewer/KindleDocViewerEvents;
.source "PageElementObjectSelectionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SelectionPageTurnListener"
.end annotation


# instance fields
.field private oldAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

.field private oldAnchorPosition:I

.field private oldEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

.field private oldEndpointPosition:I

.field private oldSelectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

.field final synthetic this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;


# direct methods
.method protected constructor <init>(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleDocViewerEvents;-><init>()V

    .line 160
    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$100(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorPosition:I

    .line 161
    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$200(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldEndpointPosition:I

    .line 162
    sget-object p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldSelectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    return-void
.end method


# virtual methods
.method public onDocViewerBeforePageTurn()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    .line 168
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v0, v1, :cond_1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$300(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 170
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$400(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 171
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$100(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorPosition:I

    .line 172
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$200(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldEndpointPosition:I

    .line 173
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldSelectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    .line 174
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$500(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    .line 175
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    .line 177
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$602(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Z)Z

    :cond_1
    return-void
.end method

.method public onDocViewerRefresh()V
    .locals 5

    .line 205
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$602(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Z)Z

    .line 207
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    iget-object v2, v0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->disposed:Z

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 213
    :cond_0
    invoke-static {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$800(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 215
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldSelectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    sget-object v3, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v0, v3, :cond_e

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    if-nez v0, :cond_3

    .line 220
    invoke-static {}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v3, "After multi-page selection page turn, saved anchor element is null!"

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    iget v3, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorPosition:I

    invoke-static {v0, v3}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$1000(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    iget v3, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorPosition:I

    invoke-static {v0, v3}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$1100(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;I)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    iget v3, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorPosition:I

    invoke-static {v0, v3}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$1200(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;I)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 228
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    iget-object v0, v0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 232
    :cond_4
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getElements()Ljava/util/Vector;

    move-result-object v0

    .line 233
    iget-object v3, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {v3}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$800(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 236
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    iget-object v3, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/IPageElement;

    .line 236
    invoke-static {v1, v3, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$500(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    goto :goto_1

    .line 241
    :cond_5
    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    iget-object v3, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 242
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/IPageElement;

    .line 241
    invoke-static {v2, v3, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$500(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    .line 244
    :goto_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldSelectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    .line 245
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$802(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_6

    .line 247
    :cond_6
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$700(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 249
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldSelectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v0, v1, :cond_d

    .line 251
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    iget-object v0, v0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    iget-object v1, v1, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result v1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v1, v3, :cond_7

    goto :goto_4

    .line 259
    :cond_7
    iget-object v3, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldSelectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    sget-object v4, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->ANNOTATE_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v3, v4, :cond_a

    iget v3, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorPosition:I

    if-lt v3, v0, :cond_8

    if-le v3, v1, :cond_a

    :cond_8
    iget v3, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldEndpointPosition:I

    if-lt v3, v0, :cond_9

    if-gt v3, v1, :cond_9

    goto :goto_2

    .line 277
    :cond_9
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectNone()V

    goto :goto_5

    .line 264
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

    if-eqz v1, :cond_b

    .line 266
    iget-object v3, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {v3, v0, v1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$500(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    goto :goto_3

    .line 269
    :cond_b
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    iget v1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorPosition:I

    iget v3, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldEndpointPosition:I

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$1300(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;IIZ)Z

    .line 275
    :goto_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldSelectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    goto :goto_5

    :cond_c
    :goto_4
    return-void

    .line 280
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {v0, v2}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$702(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Z)Z

    :cond_e
    :goto_6
    return-void
.end method

.method public onPageFlowChanged()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$700(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    .line 186
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$300(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 189
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$400(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 190
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$100(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldAnchorPosition:I

    .line 191
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$200(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldEndpointPosition:I

    .line 192
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->oldSelectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    .line 193
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$500(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    .line 194
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    .line 196
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$602(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Z)Z

    .line 197
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;->this$0:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->access$702(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Z)Z

    :cond_0
    return-void
.end method
