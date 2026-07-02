.class public interface abstract Lcom/amazon/whispersync/roboguice/inject/RoboInjector;
.super Ljava/lang/Object;
.source "RoboInjector.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Injector;


# virtual methods
.method public abstract injectMembersWithoutViews(Ljava/lang/Object;)V
.end method

.method public abstract injectViewMembers(Landroid/app/Activity;)V
.end method

.method public abstract injectViewMembers(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V
.end method
