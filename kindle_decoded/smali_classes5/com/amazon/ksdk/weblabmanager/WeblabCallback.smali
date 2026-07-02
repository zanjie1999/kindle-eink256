.class public abstract Lcom/amazon/ksdk/weblabmanager/WeblabCallback;
.super Ljava/lang/Object;
.source "WeblabCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/weblabmanager/WeblabCallback$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addWeblab(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getTreatmentAndRecordTrigger(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTreatmentAssignment(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract recordTrigger(Ljava/lang/String;)Z
.end method
