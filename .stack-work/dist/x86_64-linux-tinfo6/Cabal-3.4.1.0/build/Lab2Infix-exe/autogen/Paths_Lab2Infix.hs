{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -Wno-missing-safe-haskell-mode #-}
module Paths_Lab2Infix (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/p3v/Repo/Regular_infix/.stack-work/install/x86_64-linux-tinfo6/7bc9cfd4859af6830175d447d8fac35a957f8f901f9e62c7b7c36b3be613aae5/9.0.2/bin"
libdir     = "/home/p3v/Repo/Regular_infix/.stack-work/install/x86_64-linux-tinfo6/7bc9cfd4859af6830175d447d8fac35a957f8f901f9e62c7b7c36b3be613aae5/9.0.2/lib/x86_64-linux-ghc-9.0.2/Lab2Infix-0.1.0.0-2vcZoNtsNW1yBG6WEFzyF-Lab2Infix-exe"
dynlibdir  = "/home/p3v/Repo/Regular_infix/.stack-work/install/x86_64-linux-tinfo6/7bc9cfd4859af6830175d447d8fac35a957f8f901f9e62c7b7c36b3be613aae5/9.0.2/lib/x86_64-linux-ghc-9.0.2"
datadir    = "/home/p3v/Repo/Regular_infix/.stack-work/install/x86_64-linux-tinfo6/7bc9cfd4859af6830175d447d8fac35a957f8f901f9e62c7b7c36b3be613aae5/9.0.2/share/x86_64-linux-ghc-9.0.2/Lab2Infix-0.1.0.0"
libexecdir = "/home/p3v/Repo/Regular_infix/.stack-work/install/x86_64-linux-tinfo6/7bc9cfd4859af6830175d447d8fac35a957f8f901f9e62c7b7c36b3be613aae5/9.0.2/libexec/x86_64-linux-ghc-9.0.2/Lab2Infix-0.1.0.0"
sysconfdir = "/home/p3v/Repo/Regular_infix/.stack-work/install/x86_64-linux-tinfo6/7bc9cfd4859af6830175d447d8fac35a957f8f901f9e62c7b7c36b3be613aae5/9.0.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "Lab2Infix_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "Lab2Infix_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "Lab2Infix_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "Lab2Infix_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "Lab2Infix_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "Lab2Infix_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
