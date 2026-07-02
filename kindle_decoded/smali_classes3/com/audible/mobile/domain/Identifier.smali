.class public interface abstract Lcom/audible/mobile/domain/Identifier;
.super Ljava/lang/Object;
.source "Identifier.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;
.implements Ljava/lang/CharSequence;
.implements Lcom/audible/mobile/logging/PIIMarked;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "TT;>;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/CharSequence;",
        "Lcom/audible/mobile/logging/PIIMarked;"
    }
.end annotation


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method
