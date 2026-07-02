.class final Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;
.super Ljava/lang/Object;
.source "AbstractSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/persistence/AbstractSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final EMPTY:Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;


# instance fields
.field final isEmpty:Z

.field final object:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 378
    new-instance v0, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;

    invoke-direct {v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;-><init>()V

    sput-object v0, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;->EMPTY:Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 385
    iput-boolean v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;->isEmpty:Z

    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;->object:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;->isEmpty:Z

    .line 391
    iput-object p1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;->object:Ljava/lang/Object;

    return-void
.end method

.method static emptyOne()Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;
    .locals 1

    .line 396
    sget-object v0, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;->EMPTY:Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;

    return-object v0
.end method

.method static of(Ljava/lang/Object;)Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;
    .locals 1

    .line 401
    new-instance v0, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Holder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;->isEmpty:Z

    if-eqz v1, :cond_0

    const-string v1, "(empty)"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$Holder;->object:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
