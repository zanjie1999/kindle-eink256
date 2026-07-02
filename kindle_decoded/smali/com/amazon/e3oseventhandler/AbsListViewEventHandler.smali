.class public abstract Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;
.super Lcom/amazon/e3oseventhandler/BasePaginationHandler;
.source "AbsListViewEventHandler.java"


# static fields
.field private static final INVALID_LOCATION:I = -0x1

.field private static final PREVENT_UNXOR_NOSCROLL:Ljava/lang/String; = "STAY-PRESSED:NOSCROLL"

.field private static final PREVENT_UNXOR_ON:Ljava/lang/String; = "STAY-PRESSED:ON"

.field private static final WIDGET_CLASS_NAME:Ljava/lang/String; = "com.amazon.e3oseventhandler.AbsListViewEventHandler"

.field private static sLayoutChildrenMethod:Ljava/lang/reflect/Method;

.field private static sMotionY:Ljava/lang/reflect/Field;

.field private static sTouchMode:Ljava/lang/reflect/Field;


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;

.field private mDownPosition:I

.field private mDownView:Landroid/view/View;

.field private mKeepSetPressed:Z

.field private mPreventUnXor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;-><init>()V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mDownPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;-><init>(Landroid/view/View;)V

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mDownPosition:I

    .line 90
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->getReflectionReferences()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Landroid/widget/AbsListView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mAbsListView:Landroid/widget/AbsListView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mPreventUnXor:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->layoutChildren()V

    return-void
.end method

.method static synthetic access$102(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mPreventUnXor:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->performClickOnItem()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;Landroid/view/View;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->isUnXorNoScroll(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mDownView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$302(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mDownView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;Landroid/view/MotionEvent;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->getDownEventView(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)I
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->getMotionY()I

    move-result p0

    return p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mKeepSetPressed:Z

    return p0
.end method

.method static synthetic access$702(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mKeepSetPressed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;Landroid/view/View;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->hasListViewControl(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;Landroid/widget/AbsListView;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->setTouchMode(Landroid/widget/AbsListView;)V

    return-void
.end method

.method private getDownEventView(Landroid/view/MotionEvent;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mDownPosition:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p1

    .line 160
    iget v0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mDownPosition:I

    sub-int/2addr v0, p1

    if-ltz v0, :cond_2

    .line 161
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mDownView:Landroid/view/View;

    :cond_2
    :goto_0
    return-void
.end method

.method private getLayoutChildrenReference()V
    .locals 3

    .line 100
    sget-object v0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->sLayoutChildrenMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "layoutChildren"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->sLayoutChildrenMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getMotionY()I
    .locals 5

    .line 363
    sget-object v0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->sMotionY:Ljava/lang/reflect/Field;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 364
    sget-object v0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string/jumbo v2, "mMotionY is not resolved."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 368
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 369
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 370
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 373
    sget-object v2, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not access mMotionY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    return v1
.end method

.method private getMotionYReference()V
    .locals 2

    .line 125
    sget-object v0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->sMotionY:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    const-class v0, Landroid/widget/AbsListView;

    :try_start_0
    const-string/jumbo v1, "mMotionY"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->sMotionY:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getReflectionReferences()V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->getTouchmodeReference()V

    .line 95
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->getMotionYReference()V

    .line 96
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->getLayoutChildrenReference()V

    return-void
.end method

.method private getTouchmodeReference()V
    .locals 2

    .line 112
    sget-object v0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->sTouchMode:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    const-class v0, Landroid/widget/AbsListView;

    :try_start_0
    const-string/jumbo v1, "mTouchMode"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->sTouchMode:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private hasListViewControl(Landroid/view/View;)Z
    .locals 4

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "E3OS_WIDGET_CONTROL"

    const-string v3, "id"

    .line 174
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "STAY-PRESSED:ON"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isUnXorNoScroll(Landroid/view/View;)Z
    .locals 4

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "E3OS_WIDGET_CONTROL"

    const-string v3, "id"

    .line 191
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 193
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "STAY-PRESSED:NOSCROLL"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private layoutChildren()V
    .locals 4

    .line 385
    sget-object v0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->sLayoutChildrenMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 386
    sget-object v0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string v1, "layoutChildren() is not resolved."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 390
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 395
    sget-object v1, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layoutChildren() could not be invoked  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 392
    sget-object v1, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layoutChildren() could not be invoked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private performClickOnItem()V
    .locals 5

    .line 142
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->cancelPendingInputEvents()V

    .line 144
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mDownView:Landroid/view/View;

    iget v2, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mDownPosition:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    check-cast v3, Landroid/widget/ListAdapter;

    iget v4, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mDownPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    return-void
.end method

.method private setTouchMode(Landroid/widget/AbsListView;)V
    .locals 3

    .line 343
    sget-object v0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->sTouchMode:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 344
    sget-object p1, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string/jumbo v0, "mTouchMode is not resolved."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 348
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 349
    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 350
    sget-object v0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->sTouchMode:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 353
    sget-object v0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set mTouchMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getScaledPosition(F)I
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 435
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    :goto_0
    return p1
.end method

.method protected isOnLastPage(IIZ)Z
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isScrollToLastPage(IIIZ)Z
    .locals 0

    add-int/2addr p1, p2

    if-gt p1, p3, :cond_1

    if-ne p1, p3, :cond_0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onTouchSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 210
    invoke-super {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->onTouchSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 213
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mKeepSetPressed:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isLongPress()Z

    move-result p1

    if-nez p1, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->performClickOnItem()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected scrollToPosition(IZ)V
    .locals 2

    .line 407
    sget-boolean v0, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scrolling to position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Scrolling to last page = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mAbsListView:Landroid/widget/AbsListView;

    new-instance v1, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$2;-><init>(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;ZI)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFilter(Landroid/view/View;)V
    .locals 0

    .line 221
    new-instance p1, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;

    invoke-direct {p1, p0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;-><init>(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)V

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mScrollFilter:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setWidgetViewInternal(Landroid/view/View;)V
    .locals 1

    .line 202
    instance-of v0, p1, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 203
    check-cast p1, Landroid/widget/AbsListView;

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->mAbsListView:Landroid/widget/AbsListView;

    :cond_0
    return-void
.end method
