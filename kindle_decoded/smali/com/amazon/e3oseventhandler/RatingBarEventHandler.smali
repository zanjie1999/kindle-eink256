.class public Lcom/amazon/e3oseventhandler/RatingBarEventHandler;
.super Lcom/amazon/e3oseventhandler/BaseProgressHandler;
.source "RatingBarEventHandler.java"


# static fields
.field private static final MISUSERSEEKABLE_FIELD:Ljava/lang/String; = "mIsUserSeekable"

.field private static final POINT_IN_VIEW_METHOD:Ljava/lang/String; = "pointInView"

.field private static final WIDGET_CLASS_NAME:Ljava/lang/String; = "com.amazon.e3oseventhandler.RatingBarEventHandler"

.field private static sIsUserSeekable:Ljava/lang/reflect/Field;

.field private static sPointInView:Ljava/lang/reflect/Method;


# instance fields
.field private mRatingBar:Landroid/widget/RatingBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/BaseProgressHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/BaseProgressHandler;-><init>(Landroid/view/View;)V

    .line 65
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->getReflectionReferences()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/e3oseventhandler/RatingBarEventHandler;)Landroid/widget/RatingBar;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->mRatingBar:Landroid/widget/RatingBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/e3oseventhandler/RatingBarEventHandler;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->isUserSeekable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/e3oseventhandler/RatingBarEventHandler;Landroid/view/MotionEvent;I)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->pointInView(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method

.method private getPointInViewReference()V
    .locals 6

    .line 74
    sget-object v0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->sPointInView:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "pointInView"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->sPointInView:Ljava/lang/reflect/Method;

    .line 79
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getReflectionReferences()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->getUserSeekableReference()V

    .line 70
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->getPointInViewReference()V

    return-void
.end method

.method private getUserSeekableReference()V
    .locals 2

    .line 86
    sget-object v0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->sIsUserSeekable:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    const-class v0, Landroid/widget/AbsSeekBar;

    :try_start_0
    const-string/jumbo v1, "mIsUserSeekable"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->sIsUserSeekable:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private isUserSeekable()Z
    .locals 5

    .line 180
    sget-object v0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->sIsUserSeekable:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string/jumbo v2, "mIsUserSeekable is not resolved."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 186
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 188
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 191
    sget-object v2, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get mIsUserSeekable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method private pointInView(Landroid/view/MotionEvent;I)Z
    .locals 5

    .line 153
    sget-object v0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->sPointInView:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 154
    sget-object p1, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string/jumbo p2, "pointInView() method is not resolved."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 159
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->mRatingBar:Landroid/widget/RatingBar;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 160
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    .line 161
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    sget-object p2, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pointInView() could not be invoked  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 164
    sget-object p2, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pointInView() could not be accessed : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public setFilter(Landroid/view/View;)V
    .locals 0

    .line 107
    new-instance p1, Lcom/amazon/e3oseventhandler/RatingBarEventHandler$1;

    invoke-direct {p1, p0}, Lcom/amazon/e3oseventhandler/RatingBarEventHandler$1;-><init>(Lcom/amazon/e3oseventhandler/RatingBarEventHandler;)V

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BaseProgressHandler;->mScrollFilter:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setWidgetViewInternal(Landroid/view/View;)V
    .locals 1

    .line 100
    instance-of v0, p1, Landroid/widget/RatingBar;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Landroid/widget/RatingBar;

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/RatingBarEventHandler;->mRatingBar:Landroid/widget/RatingBar;

    :cond_0
    return-void
.end method
