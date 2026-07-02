.class public abstract Lcom/amazon/ksdk/profiles/RegistrationEventsObserver;
.super Ljava/lang/Object;
.source "RegistrationEventsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/profiles/RegistrationEventsObserver$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract didDeregister(Ljava/lang/String;)V
.end method

.method public abstract didRegister(Ljava/lang/String;)V
.end method
