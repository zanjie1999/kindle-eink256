.class Lcom/amazon/notebook/module/NotebookArrayAdapter$9;
.super Ljava/lang/Object;
.source "NotebookArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookArrayAdapter;->setAnnotationActionMenu(Landroid/view/View;ILandroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

.field final synthetic val$annotationImageView:Landroid/widget/RelativeLayout;

.field final synthetic val$noteListItem:Landroid/view/View;

.field final synthetic val$position:I

.field final synthetic val$resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;ILandroid/content/res/Resources;Landroid/view/View;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iput p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$position:I

    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$resources:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$noteListItem:Landroid/view/View;

    iput-object p5, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$annotationImageView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    .line 857
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "NotebookAnnotationAction"

    const-string v3, "AnnotationActionButtonClicked"

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget-object v1, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 862
    sget v2, Lcom/amazon/notebook/module/R$layout;->notebook_annotation_actions_menu:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 865
    new-instance v11, Landroid/widget/PopupWindow;

    const/4 v12, -0x2

    invoke-direct {v11, v1, v12, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 870
    iget-object v2, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {v2}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$200(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/ThemeProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 871
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xdcdcdd

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v11, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 873
    :cond_0
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v11, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v13, 0x1

    .line 875
    invoke-virtual {v11, v13}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 876
    invoke-virtual {v11, v13}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 877
    invoke-virtual {v11, v13}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 881
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    const/high16 v2, 0x40a00000    # 5.0f

    .line 882
    invoke-virtual {v11, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 885
    :cond_1
    iget-object v2, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget v3, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$position:I

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/amazon/kcp/reader/Note;

    .line 887
    sget v2, Lcom/amazon/notebook/module/R$id;->annotation_actions_delete_highlight:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x7

    const/4 v15, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    if-eqz v14, :cond_2

    .line 889
    invoke-virtual {v14}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v4

    if-eq v4, v15, :cond_2

    invoke-virtual {v14}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 890
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 892
    :cond_2
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 893
    iget-object v4, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v5, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$resources:Landroid/content/res/Resources;

    invoke-static {v4, v5}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$300(Lcom/amazon/notebook/module/NotebookArrayAdapter;Landroid/content/res/Resources;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 894
    new-instance v4, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;

    invoke-direct {v4, v0, v14, v11}, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter$9;Lcom/amazon/kcp/reader/Note;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    :cond_3
    :goto_1
    sget v2, Lcom/amazon/notebook/module/R$id;->annotation_actions_delete_bookmark:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 914
    invoke-virtual {v14}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v4

    if-eqz v4, :cond_4

    .line 915
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 917
    :cond_4
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 918
    iget-object v4, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v5, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$resources:Landroid/content/res/Resources;

    invoke-static {v4, v5}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$300(Lcom/amazon/notebook/module/NotebookArrayAdapter;Landroid/content/res/Resources;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 919
    new-instance v4, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$2;

    invoke-direct {v4, v0, v14, v11}, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$2;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter$9;Lcom/amazon/kcp/reader/Note;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 933
    :cond_5
    :goto_2
    invoke-virtual {v14}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v2

    if-ne v2, v15, :cond_6

    .line 934
    invoke-static {v14}, Lcom/amazon/notebook/AnnotationUtils;->getAnnotationSelectionType(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "TEXT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    invoke-virtual {v14}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v2

    if-ne v2, v3, :cond_8

    .line 935
    :cond_7
    iget-object v7, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget v5, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$position:I

    move-object v4, v7

    move-object v6, v14

    move-object v8, v1

    const/4 v3, 0x0

    move-object v9, v11

    invoke-static/range {v4 .. v9}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$500(Lcom/amazon/notebook/module/NotebookArrayAdapter;ILcom/amazon/kcp/reader/Note;Landroid/widget/ArrayAdapter;Landroid/view/View;Landroid/widget/PopupWindow;)V

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    .line 938
    :goto_3
    sget v2, Lcom/amazon/notebook/module/R$id;->annotation_actions_delete_note:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_a

    .line 941
    invoke-virtual {v14}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v2

    if-eq v2, v13, :cond_9

    iget-object v2, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {v2}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$400(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 942
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 944
    :cond_9
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 945
    iget-object v2, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v4, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$resources:Landroid/content/res/Resources;

    invoke-static {v2, v4}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$300(Lcom/amazon/notebook/module/NotebookArrayAdapter;Landroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 946
    new-instance v8, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;

    iget-object v5, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$noteListItem:Landroid/view/View;

    iget v6, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$position:I

    iget-object v2, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    .line 947
    invoke-static {v2}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object v7

    iget-object v2, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {v2}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$400(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Ljava/util/Map;

    move-result-object v16

    iget-object v4, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    .line 948
    invoke-static {v4}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$600(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    move-result-object v17

    move-object v2, v8

    const/4 v12, 0x0

    move-object v3, v11

    move-object/from16 v18, v4

    move-object v4, v14

    move-object v15, v8

    move-object/from16 v8, v16

    move-object v12, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v17

    invoke-direct/range {v2 .. v10}, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;-><init>(Landroid/widget/PopupWindow;Lcom/amazon/kcp/reader/Note;Landroid/view/View;ILcom/amazon/notebook/module/NotebookListEventHandler;Ljava/util/Map;Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;)V

    .line 946
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 952
    :cond_a
    :goto_4
    sget v2, Lcom/amazon/notebook/module/R$id;->annotation_actions_edit_note:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 953
    invoke-virtual {v14}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v3

    if-eq v3, v13, :cond_b

    iget-object v3, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {v3}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$400(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const/16 v3, 0x8

    .line 954
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_b
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 956
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 957
    iget-object v4, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v5, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$resources:Landroid/content/res/Resources;

    invoke-static {v4, v5}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$300(Lcom/amazon/notebook/module/NotebookArrayAdapter;Landroid/content/res/Resources;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 958
    new-instance v4, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$3;

    invoke-direct {v4, v0, v14, v11}, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$3;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter$9;Lcom/amazon/kcp/reader/Note;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 972
    :goto_5
    sget v2, Lcom/amazon/notebook/module/R$id;->annotation_actions_copy:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_d

    .line 974
    iget-object v4, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {v4}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$700(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 975
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    .line 977
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 978
    iget-object v3, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v4, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$resources:Landroid/content/res/Resources;

    invoke-static {v3, v4}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$300(Lcom/amazon/notebook/module/NotebookArrayAdapter;Landroid/content/res/Resources;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 979
    new-instance v3, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;

    iget-object v4, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {v5}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$700(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v5

    invoke-direct {v3, v4, v5, v11, v14}, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;Landroid/widget/PopupWindow;Lcom/amazon/kcp/reader/Note;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    :goto_6
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 984
    iget-object v3, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$annotationImageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    .line 985
    aget v2, v2, v13

    int-to-double v2, v2

    .line 987
    iget-object v4, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {v4}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/notebook/module/NotebookListEventHandler;->getActivity()Lcom/amazon/notebook/module/NotebookActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 988
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 989
    invoke-virtual {v4, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 990
    iget v4, v5, Landroid/graphics/Point;->y:I

    .line 992
    sget v5, Lcom/amazon/notebook/module/R$id;->annotation_actions_scroll:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 994
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v6, -0x2

    .line 995
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 996
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 997
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1000
    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5}, Landroid/view/View;->measure(II)V

    .line 1001
    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1002
    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1003
    invoke-virtual {v11, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    int-to-double v5, v1

    add-double/2addr v2, v5

    .line 1005
    iget-object v1, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$annotationImageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-double v5, v1

    add-double/2addr v2, v5

    double-to-int v1, v2

    const/4 v2, 0x5

    if-ge v1, v4, :cond_e

    .line 1008
    iget-object v1, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$annotationImageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v11, v1, v3, v4, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_7

    .line 1010
    :cond_e
    iget-object v3, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$annotationImageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    sub-int/2addr v4, v1

    invoke-virtual {v11, v3, v5, v4, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    :goto_7
    return-void
.end method
