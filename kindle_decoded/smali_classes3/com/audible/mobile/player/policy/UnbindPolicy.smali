.class public abstract Lcom/audible/mobile/player/policy/UnbindPolicy;
.super Ljava/lang/Object;
.source "UnbindPolicy.java"

# interfaces
.implements Lcom/audible/mobile/player/policy/Policy;


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/audible/mobile/player/policy/UnbindPolicy;->context:Landroid/content/Context;

    return-void
.end method
