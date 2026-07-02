.class public abstract Lcom/amazon/kindle/krx/tutorial/DialogTutorial;
.super Lcom/amazon/kindle/krx/tutorial/Tutorial;
.source "DialogTutorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/tutorial/DialogTutorial$DialogButton;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/Tutorial;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDescription()Landroid/text/SpannableString;
.end method

.method public abstract getHeader()Landroid/text/SpannableString;
.end method

.method public abstract getImage()Landroid/graphics/drawable/Drawable;
.end method

.method public getNegativeButtonText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNeutralButtonText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onClick(Lcom/amazon/kindle/krx/tutorial/DialogTutorial$DialogButton;)V
.end method
