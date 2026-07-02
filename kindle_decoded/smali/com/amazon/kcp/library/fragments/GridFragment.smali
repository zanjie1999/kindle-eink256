.class public Lcom/amazon/kcp/library/fragments/GridFragment;
.super Landroidx/fragment/app/Fragment;
.source "GridFragment.java"


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field mGrid:Lcom/amazon/kcp/library/fragments/HeaderGridView;

.field mGridContainer:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mListShown:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/amazon/kcp/library/fragments/GridFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/GridFragment$1;-><init>(Lcom/amazon/kcp/library/fragments/GridFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Lcom/amazon/kcp/library/fragments/GridFragment$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/GridFragment$2;-><init>(Lcom/amazon/kcp/library/fragments/GridFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGrid:Lcom/amazon/kcp/library/fragments/HeaderGridView;

    if-eqz v0, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 336
    instance-of v1, v0, Lcom/amazon/kcp/library/fragments/HeaderGridView;

    if-eqz v1, :cond_1

    .line 337
    check-cast v0, Lcom/amazon/kcp/library/fragments/HeaderGridView;

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGrid:Lcom/amazon/kcp/library/fragments/HeaderGridView;

    goto :goto_1

    :cond_1
    const v1, 0xff0f01

    .line 339
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v1, :cond_2

    const v1, 0x1020004

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mEmptyView:Landroid/view/View;

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    .line 343
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v1, 0xff0f02

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mProgressContainer:Landroid/view/View;

    const v1, 0xff0f03

    .line 346
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGridContainer:Landroid/view/View;

    const v1, 0x102000a

    .line 347
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 348
    instance-of v1, v0, Lcom/amazon/kcp/library/fragments/HeaderGridView;

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    .line 350
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a GridView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a GridView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_4
    check-cast v0, Lcom/amazon/kcp/library/fragments/HeaderGridView;

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGrid:Lcom/amazon/kcp/library/fragments/HeaderGridView;

    .line 359
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 360
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 361
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 362
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGrid:Lcom/amazon/kcp/library/fragments/HeaderGridView;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    :cond_6
    :goto_1
    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mListShown:Z

    .line 367
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGrid:Lcom/amazon/kcp/library/fragments/HeaderGridView;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 368
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    .line 370
    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 371
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/fragments/GridFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 375
    :cond_7
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, v0, v0}, Lcom/amazon/kcp/library/fragments/GridFragment;->setListShown(ZZ)V

    .line 379
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 334
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 98
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0xff0f02

    .line 103
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x8

    .line 105
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x11

    .line 106
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 108
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x101007a

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0xff0f03

    .line 119
    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 121
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0xff0f01

    .line 122
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V

    .line 123
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 124
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance v0, Lcom/amazon/kcp/library/fragments/HeaderGridView;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/fragments/HeaderGridView;-><init>(Landroid/content/Context;)V

    const p1, 0x102000a

    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setId(I)V

    .line 129
    sget p1, Lcom/amazon/kindle/librarymodule/R$color;->transparent:I

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setSelector(I)V

    const/4 p1, 0x0

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    .line 131
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public onDestroyView()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGrid:Lcom/amazon/kcp/library/fragments/HeaderGridView;

    const/4 v1, 0x0

    .line 161
    iput-boolean v1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mListShown:Z

    .line 162
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGridContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mProgressContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mEmptyView:Landroid/view/View;

    .line 163
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 164
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onGridItemClick(Lcom/amazon/kcp/library/fragments/HeaderGridView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 150
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 151
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/GridFragment;->ensureList()V

    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 186
    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 187
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGrid:Lcom/amazon/kcp/library/fragments/HeaderGridView;

    if-eqz v3, :cond_2

    .line 188
    invoke-virtual {v3, p1}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-boolean p1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mListShown:Z

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/amazon/kcp/library/fragments/GridFragment;->setListShown(ZZ)V

    :cond_2
    return-void
.end method

.method protected setListShown(ZZ)V
    .locals 5

    .line 286
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/GridFragment;->ensureList()V

    .line 287
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 290
    iget-boolean v1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mListShown:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 293
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mListShown:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x10a0001

    const/high16 v4, 0x10a0000

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 296
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 298
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGridContainer:Landroid/view/View;

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 298
    invoke-static {p2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 302
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 304
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 309
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 308
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 310
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGridContainer:Landroid/view/View;

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 310
    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 313
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 314
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 316
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    .line 288
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t be used with a custom content view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
