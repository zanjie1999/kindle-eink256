.class public abstract Lcom/amazon/kindle/krx/settings/BaseSettingsControl;
.super Ljava/lang/Object;
.source "BaseSettingsControl.java"

# interfaces
.implements Lcom/amazon/kindle/krx/settings/ISettingsControl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/settings/ISettingsControl<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private categoryId:I

.field private id:Ljava/lang/String;

.field private isUserSpecific:Z

.field private isVisible:Z

.field private listener:Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/settings/ISettingsChangeListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private subTitle:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private subTitleId:I

.field private title:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private titleId:I

.field private type:Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZLcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->categoryId:I

    .line 18
    iput v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->titleId:I

    .line 19
    iput v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->subTitleId:I

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->isVisible:Z

    .line 85
    iput-object p1, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->id:Ljava/lang/String;

    .line 86
    iput p2, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->categoryId:I

    .line 87
    iput p3, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->titleId:I

    .line 88
    iput p4, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->subTitleId:I

    .line 89
    iput-boolean p5, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->isUserSpecific:Z

    .line 90
    iput-object p6, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->type:Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZLjava/lang/Object;Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZTT;",
            "Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;",
            "Lcom/amazon/kindle/krx/settings/ISettingsChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->categoryId:I

    .line 18
    iput v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->titleId:I

    .line 19
    iput v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->subTitleId:I

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->isVisible:Z

    .line 152
    iput-object p1, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->id:Ljava/lang/String;

    .line 153
    iput p2, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->categoryId:I

    .line 154
    iput p3, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->titleId:I

    .line 155
    iput p4, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->subTitleId:I

    .line 156
    iput-boolean p5, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->isUserSpecific:Z

    .line 157
    iput-object p7, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->type:Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;

    .line 158
    iput-object p6, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->value:Ljava/lang/Object;

    .line 159
    iput-object p8, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->listener:Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->categoryId:I

    .line 18
    iput v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->titleId:I

    .line 19
    iput v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->subTitleId:I

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->isVisible:Z

    .line 59
    iput-object p1, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->id:Ljava/lang/String;

    .line 60
    iput p2, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->titleId:I

    .line 61
    iput p3, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->subTitleId:I

    .line 62
    iput-boolean p4, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->isUserSpecific:Z

    .line 63
    iput-object p5, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->type:Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLjava/lang/Object;Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZTT;",
            "Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;",
            "Lcom/amazon/kindle/krx/settings/ISettingsChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->categoryId:I

    .line 18
    iput v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->titleId:I

    .line 19
    iput v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->subTitleId:I

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->isVisible:Z

    .line 117
    iput-object p1, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->id:Ljava/lang/String;

    .line 118
    iput p2, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->titleId:I

    .line 119
    iput p3, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->subTitleId:I

    .line 120
    iput-boolean p4, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->isUserSpecific:Z

    .line 121
    iput-object p6, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->type:Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;

    .line 122
    iput-object p5, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->value:Ljava/lang/Object;

    .line 123
    iput-object p7, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->listener:Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZTT;",
            "Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;",
            "Lcom/amazon/kindle/krx/settings/ISettingsChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->categoryId:I

    .line 18
    iput v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->titleId:I

    .line 19
    iput v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->subTitleId:I

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->isVisible:Z

    .line 191
    iput-object p1, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->id:Ljava/lang/String;

    .line 192
    iput-object p2, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->title:Ljava/lang/String;

    .line 193
    iput-object p3, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->subTitle:Ljava/lang/String;

    .line 194
    iput-boolean p4, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->isUserSpecific:Z

    .line 195
    iput-object p6, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->type:Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;

    .line 196
    iput-object p5, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->value:Ljava/lang/Object;

    .line 197
    iput-object p7, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->listener:Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;

    return-void
.end method


# virtual methods
.method public getCategoryId()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->categoryId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitleId()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->subTitleId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->titleId:I

    return v0
.end method

.method public getType()Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->type:Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isUserSpecific()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->isUserSpecific:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->isVisible:Z

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->value:Ljava/lang/Object;

    .line 294
    iput-object p1, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->value:Ljava/lang/Object;

    .line 296
    iget-object v1, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->listener:Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;

    if-eqz v1, :cond_1

    if-eq v0, p1, :cond_1

    .line 298
    invoke-interface {v1, p1, v0}, Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;->onSettingsChange(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    .line 320
    iput-boolean p1, p0, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->isVisible:Z

    return-void
.end method
