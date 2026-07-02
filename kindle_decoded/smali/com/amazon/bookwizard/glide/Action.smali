.class public Lcom/amazon/bookwizard/glide/Action;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/glide/Action$Program;
    }
.end annotation


# instance fields
.field private csrfToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "csrfToken"
    .end annotation
.end field

.field glideAction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "glideAction"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actionId"
    .end annotation
.end field

.field program:Lcom/amazon/bookwizard/glide/Action$Program;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actionProgram"
    .end annotation
.end field

.field type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actionType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCsrfToken()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/bookwizard/glide/Action;->csrfToken:Ljava/lang/String;

    return-object v0
.end method

.method public getGlideAction()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/bookwizard/glide/Action;->glideAction:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/bookwizard/glide/Action;->id:Ljava/lang/String;

    return-object v0
.end method
