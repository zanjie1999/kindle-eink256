.class public abstract Lcom/amazon/kcp/reader/ui/ViewOptionData;
.super Ljava/lang/Object;
.source "ViewOptionData.java"


# instance fields
.field private adapter:Landroid/widget/SpinnerAdapter;

.field protected context:Landroid/content/Context;

.field private dataChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field protected inflater:Landroid/view/LayoutInflater;

.field private initialized:Z

.field protected isVertical:Z

.field private onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private optionView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

.field protected options:[Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILandroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p3}, Lcom/amazon/kcp/reader/ui/ViewOptionData;-><init>(ILandroid/content/Context;)V

    .line 51
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->setOptions([Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(ILandroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->initialized:Z

    .line 39
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->dataChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 60
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->title:Ljava/lang/String;

    const-string p1, "layout_inflater"

    .line 61
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->inflater:Landroid/view/LayoutInflater;

    .line 62
    new-instance p1, Lcom/amazon/kcp/reader/ui/ViewOptionsSpinnerAdapter;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/ViewOptionsSpinnerAdapter;-><init>(Lcom/amazon/kcp/reader/ui/ViewOptionData;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->adapter:Landroid/widget/SpinnerAdapter;

    .line 63
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->createOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 64
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/ViewOptionData;)Landroid/widget/SpinnerAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->adapter:Landroid/widget/SpinnerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/ViewOptionData;)Lcom/amazon/foundation/internal/EventProvider;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->dataChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/ViewOptionData;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->initialized:Z

    return p0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/reader/ui/ViewOptionData;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->initialized:Z

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ui/ViewOptionData;)Lcom/amazon/kcp/reader/ui/ViewOptionsRow;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->optionView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    return-object p0
.end method

.method private createOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .line 226
    new-instance v0, Lcom/amazon/kcp/reader/ui/ViewOptionData$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ViewOptionData$3;-><init>(Lcom/amazon/kcp/reader/ui/ViewOptionData;)V

    return-object v0
.end method


# virtual methods
.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->adapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method protected getDropDownIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getOptions()[Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->options:[Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getSelectedIndex()I
.end method

.method protected inflateDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 155
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->inflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/amazon/kindle/krl/R$layout;->view_options_drop_down_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 156
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->view_options_drop_down_item_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, -0x1

    .line 157
    invoke-static {p2, v0, p3}, Lcom/amazon/android/util/UIUtils;->setViewSize(Landroid/view/View;II)V

    .line 159
    sget p3, Lcom/amazon/kindle/krl/R$id;->view_options_drop_down_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->options:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    sget p3, Lcom/amazon/kindle/krl/R$id;->view_options_drop_down_icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-nez p3, :cond_1

    return-object p2

    .line 168
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->getDropDownIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    invoke-virtual {p0, p3, p1}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->updateViewContentDescription(Landroid/widget/ImageView;I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 173
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-object p2
.end method

.method protected inflateSelectedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 198
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->inflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/amazon/kindle/krl/R$layout;->view_options_selected_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 200
    :cond_0
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->view_options_row_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, -0x1

    .line 201
    invoke-static {p2, v0, p3}, Lcom/amazon/android/util/UIUtils;->setViewSize(Landroid/view/View;II)V

    .line 203
    sget p3, Lcom/amazon/kindle/krl/R$id;->view_options_selected_title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    sget p3, Lcom/amazon/kindle/krl/R$id;->view_options_selected_value:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->options:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isItemEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract onSpinnerItemSelected(Landroid/widget/AdapterView;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;I)V"
        }
    .end annotation
.end method

.method protected refreshView()V
    .locals 2

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/kcp/reader/ui/ViewOptionData$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ViewOptionData$2;-><init>(Lcom/amazon/kcp/reader/ui/ViewOptionData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerDataChangedCallback(Lcom/amazon/foundation/ICallback;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->dataChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/EventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    return-void
.end method

.method protected setOptionView(Lcom/amazon/kcp/reader/ui/ViewOptionsRow;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->optionView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    return-void
.end method

.method protected setOptions([Ljava/lang/String;)V
    .locals 1

    .line 72
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->options:[Ljava/lang/String;

    .line 73
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/amazon/kcp/reader/ui/ViewOptionData$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ViewOptionData$1;-><init>(Lcom/amazon/kcp/reader/ui/ViewOptionData;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->isVertical:Z

    return-void
.end method

.method public unregisterDataChangedCallback(Lcom/amazon/foundation/ICallback;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData;->dataChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/EventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    return-void
.end method

.method protected updateViewContentDescription(Landroid/widget/ImageView;I)V
    .locals 0

    return-void
.end method
