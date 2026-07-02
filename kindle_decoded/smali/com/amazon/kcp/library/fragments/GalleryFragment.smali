.class public Lcom/amazon/kcp/library/fragments/GalleryFragment;
.super Landroidx/fragment/app/Fragment;
.source "GalleryFragment.java"


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field mGallery:Lcom/amazon/kcp/widget/Gallery;

.field mGalleryContainer:Landroid/view/View;

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

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/amazon/kcp/library/fragments/GalleryFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/GalleryFragment$1;-><init>(Lcom/amazon/kcp/library/fragments/GalleryFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Lcom/amazon/kcp/library/fragments/GalleryFragment$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/GalleryFragment$2;-><init>(Lcom/amazon/kcp/library/fragments/GalleryFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGallery:Lcom/amazon/kcp/widget/Gallery;

    if-eqz v0, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 338
    instance-of v1, v0, Lcom/amazon/kcp/widget/Gallery;

    if-eqz v1, :cond_1

    .line 339
    check-cast v0, Lcom/amazon/kcp/widget/Gallery;

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGallery:Lcom/amazon/kcp/widget/Gallery;

    goto :goto_1

    :cond_1
    const v1, 0xff0c01

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v1, :cond_2

    const v1, 0x1020004

    .line 343
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mEmptyView:Landroid/view/View;

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    .line 345
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v1, 0xff0c02

    .line 347
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mProgressContainer:Landroid/view/View;

    const v1, 0xff0c03

    .line 348
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGalleryContainer:Landroid/view/View;

    const v1, 0x102000a

    .line 349
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 350
    instance-of v1, v0, Lcom/amazon/kcp/widget/Gallery;

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    .line 352
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a Gallery whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a Gallery class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_4
    check-cast v0, Lcom/amazon/kcp/widget/Gallery;

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGallery:Lcom/amazon/kcp/widget/Gallery;

    .line 361
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 362
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 363
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 364
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGallery:Lcom/amazon/kcp/widget/Gallery;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    :cond_6
    :goto_1
    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mListShown:Z

    .line 369
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGallery:Lcom/amazon/kcp/widget/Gallery;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    .line 372
    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 373
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/fragments/GalleryFragment;->setSpinnerAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_2

    .line 377
    :cond_7
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 378
    invoke-direct {p0, v0, v0}, Lcom/amazon/kcp/library/fragments/GalleryFragment;->setListShown(ZZ)V

    .line 381
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 336
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setListShown(ZZ)V
    .locals 5

    .line 288
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/GalleryFragment;->ensureList()V

    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 292
    iget-boolean v1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mListShown:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 295
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mListShown:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x10a0001

    const/high16 v4, 0x10a0000

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 298
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 300
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGalleryContainer:Landroid/view/View;

    .line 301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 300
    invoke-static {p2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 304
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGalleryContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 306
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGalleryContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 310
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 312
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGalleryContainer:Landroid/view/View;

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 312
    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 315
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 316
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGalleryContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 318
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGalleryContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    .line 290
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t be used with a custom content view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected getGalleryInstance(Landroid/content/Context;)Lcom/amazon/kcp/widget/Gallery;
    .locals 1

    .line 391
    new-instance v0, Lcom/amazon/kcp/widget/Gallery;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/widget/Gallery;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

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

    const v0, 0xff0c02

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

    const p1, 0xff0c03

    .line 119
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 121
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0xff0c01

    .line 122
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setId(I)V

    .line 123
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 124
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/GalleryFragment;->getGalleryInstance(Landroid/content/Context;)Lcom/amazon/kcp/widget/Gallery;

    move-result-object p1

    const v0, 0x102000a

    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setId(I)V

    .line 129
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public onDestroyView()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGallery:Lcom/amazon/kcp/widget/Gallery;

    invoke-virtual {v0}, Lcom/amazon/kcp/widget/Gallery;->onDestroy()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGallery:Lcom/amazon/kcp/widget/Gallery;

    const/4 v1, 0x0

    .line 160
    iput-boolean v1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mListShown:Z

    .line 161
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGalleryContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mProgressContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mEmptyView:Landroid/view/View;

    .line 162
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 163
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onGalleryItemClick(Lcom/amazon/kcp/widget/Gallery;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 148
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 149
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/GalleryFragment;->ensureList()V

    return-void
.end method

.method public setSpinnerAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 185
    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 186
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGallery:Lcom/amazon/kcp/widget/Gallery;

    if-eqz v3, :cond_2

    .line 187
    invoke-virtual {v3, p1}, Lcom/amazon/kcp/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 188
    iget-boolean p1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mListShown:Z

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/amazon/kcp/library/fragments/GalleryFragment;->setListShown(ZZ)V

    :cond_2
    return-void
.end method
