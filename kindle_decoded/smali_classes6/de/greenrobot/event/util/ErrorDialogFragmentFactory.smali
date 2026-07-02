.class public abstract Lde/greenrobot/event/util/ErrorDialogFragmentFactory;
.super Ljava/lang/Object;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final config:Lde/greenrobot/event/util/ErrorDialogConfig;


# virtual methods
.method protected abstract prepareErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;ZLandroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/util/ThrowableFailureEvent;",
            "Z",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method
